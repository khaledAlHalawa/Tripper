import 'dart:typed_data';
import 'dart:ui';

import 'package:app/features/trip/domain/entities/place_trip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

import '../../../../common/constant/configuration/.env.dart';

enum GoogleMapsMode { expand, normal }

class GoogleMapsWidget extends StatefulWidget {
  const GoogleMapsWidget({
    Key? key,
    required this.places,
    this.mode = GoogleMapsMode.normal,
  }) : super(key: key);

  final List<PlaceTrip> places;
  final GoogleMapsMode mode;
  @override
  State<GoogleMapsWidget> createState() => _GoogleMapsWidgetState();
}

class _GoogleMapsWidgetState extends State<GoogleMapsWidget> {
  final Map<String, Marker> _markers = {};
  GoogleMapController? controller;
  Location location = Location();
  bool? _serviceEnabled;
  PermissionStatus? _permissionGranted;
  LocationData? _locationData;

  final Set<Polyline> _polylines = Set<Polyline>();
  List<LatLng> polylineCoordinates = [];
  PolylinePoints polylinePoints = PolylinePoints();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10).r,
      child: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: const CameraPosition(
            bearing: 0.0, target: LatLng(34.621222254388, 38.66953309625388), tilt: 0.0, zoom: 6.0),
        zoomControlsEnabled: false,
        // myLocationButtonEnabled: true,
        // myLocationEnabled: true,
        buildingsEnabled: isExpandMode,
        compassEnabled: isExpandMode,
        indoorViewEnabled: isExpandMode,
        rotateGesturesEnabled: isExpandMode,
        mapToolbarEnabled: isExpandMode,
        // polylines: _polylines,
        markers: _markers.values.toSet(),
        onCameraMove: (cameraPosition) {},
        gestureRecognizers: {
          Factory<OneSequenceGestureRecognizer>(
            () => EagerGestureRecognizer(),
          ),
          Factory<PanGestureRecognizer>(
            () => PanGestureRecognizer(),
          ),
          Factory<VerticalDragGestureRecognizer>(
            () => VerticalDragGestureRecognizer(),
          ),
        },
      ),
    );
  }

  Future<void> _onMapCreated(GoogleMapController controller) async {
    this.controller = controller;

    // await initLocation();

    for (var e in widget.places) {
      final icon = await getPinIcon(e.placeTypeId);
      final entry = MapEntry(
          e.name!,
          Marker(
              markerId: MarkerId(e.id!),
              position: LatLng(e.address!.longitude!, e.address!.latitude!),
              flat: true,
              infoWindow: InfoWindow(
                title: e.name, snippet: 'العنوان: ${e.address?.address} ',
                // '${e.address?.streetAddress != null ? "\nالشارع: ${e.address?.streetAddress}" : ''}'
              ),
              icon: icon));

      _markers.addAll({entry.key: entry.value});
    }

    if(isExpandMode) {
      controller.animateCamera(
      CameraUpdate.newCameraPosition(CameraPosition(
          target: LatLng(widget.places.first.address!.longitude!, widget.places.first.address!.latitude!), zoom: 9)),
    );
    }
    // setPolylines();
    setState(() {});
  }

  initLocation() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled!) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled!) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();
    controller?.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(_locationData!.latitude!, _locationData!.longitude!), zoom: 6)));
    setState(() {});
  }

  bool get isExpandMode => widget.mode == GoogleMapsMode.expand;

  setPolylines() async {
    if (widget.places.length >= 2) {
      PolylineResult result = await PolylinePoints().getRouteBetweenCoordinates(
        googleApiKey,
        PointLatLng(widget.places.first.address!.longitude!, widget.places.first.address!.latitude!),
        PointLatLng(widget.places.last.address!.longitude!, widget.places.last.address!.latitude!),
      );

      if (result.status == 'OK') {
        result.points.forEach((PointLatLng point) {
          polylineCoordinates.add(LatLng(point.latitude, point.longitude));
        });

        _polylines.add(
          Polyline(
              polylineId: PolylineId('polyLine'),
              width: 10,
              color: Theme.of(context).colorScheme.primary,
              points: polylineCoordinates),
        );
      }
    }
  }

  Future<BitmapDescriptor> getPinIcon([String? placeType = '']) async {
    final x = await getBytesFromAsset(mapPlaceImage[placeType] ?? 'assets/pin_maps/pin.png', 84);
    return BitmapDescriptor.fromBytes(x);
  }

  static Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    Codec codec = await instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
    FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ImageByteFormat.png))!.buffer.asUint8List();
  }

  final mapPlaceImage = {
    '96e97f67-b490-42bc-aab5-90550797ec6b': 'assets/pin_maps/compass.png',
    '96e97f67-b759-4171-b325-df0926caed87': 'assets/pin_maps/museum.png',
    '96e97f67-b914-4ff8-941a-c4d08cfe6707': 'assets/pin_maps/museum.png',
    '96e97f67-ba7b-45a5-a387-cf0e3ee95204': 'assets/pin_maps/hotel.png',
    '96e97f67-bc4d-41c9-b7c3-85edc979bdce': 'assets/pin_maps/restaurant.png',
    '96e97f67-bf8b-4e22-a359-f49abf40b912': 'assets/pin_maps/shopping.png',
    '96e97f67-c106-47ce-96bb-40592f74080f': 'assets/pin_maps/beach.png',
  };
}
