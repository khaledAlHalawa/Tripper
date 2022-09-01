import 'package:app/common/constant/configuration/.env.dart';
import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DirectionsService {
  static const String baseurl = 'https://maps.googleapis.com/maps/api/directions/json?';

  final Dio dio = Dio();

  Future getDirection(LatLng origin , LatLng destenation) async {
    final response = await dio.get(
      baseurl,
      queryParameters: {
        'key':googleApiKey,
        'origin': '${origin.latitude},${origin.longitude}',
        'destination':'${destenation.latitude},${destenation.longitude}',
      },
    );
  }
}
