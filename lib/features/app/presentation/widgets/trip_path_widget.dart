import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:app/features/trip/domain/entities/place_trip.dart';
import 'package:app/service/language_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/responsive_padding.dart';
import '../../../trip/presentation/widgets/place_path_card.dart';

class TripPathWidget extends StatefulWidget {
  const TripPathWidget({Key? key, required this.index, required this.place, required this.isLastPlace})
      : super(key: key);

  final int index;
  final PlaceTrip place;
  final bool isLastPlace;
  @override
  State<TripPathWidget> createState() => _TripPathWidgetState();
}

class _TripPathWidgetState extends State<TripPathWidget> {
  ColorScheme? colorscheme;
  late ExpandableController _controller;
  bool isExpanded = false;

  PlaceTrip get place => widget.place;

  @override
  void initState() {
    super.initState();
    _controller = ExpandableController();
    _controller.addListener(() {
      isExpanded = _controller.expanded;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    colorscheme = Theme.of(context).colorScheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        20.horizontalSpace,
        Padding(
          padding: HWEdgeInsets.only(top: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap:_controller.toggle,
                child: CircleAvatar(
                  radius: 15.r,
                  backgroundColor: isExpanded ? colorscheme!.yellow : colorscheme!.primary,
                  child: widget.index == 0 ? null : CircleAvatar(radius: 8.r, backgroundColor: colorscheme!.white),
                ),
              ),
              if (!widget.isLastPlace)
                Transform.translate(
                  offset: const Offset(0, 5),
                  child: SizedBox(
                    width: 20,
                    height: isExpanded ? 375 : 30,
                    child: MySeparator(color: colorscheme!.primary, isExpanded: isExpanded),
                  ),
                ),
            ],
          ),
        ),
        Flexible(
          child: ExpandableNotifier(
            controller: _controller,
            child: ScrollOnExpand(
              scrollOnCollapse: true,
              scrollOnExpand: true,
              child: ExpandableTheme(
                data: customExpandableThemeData(),
                child: ExpandablePanel(
                  expanded: PlacePathCard(
                    place: place,
                    onClose: _controller.toggle,
                  ),
                  collapsed: Container(),
                  controller: _controller,
                  header: header(),
                  builder: (_, collapsed, expanded) {
                    return Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                    );
                  },
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget header() {
    return Builder(
      builder: (context) {
        return Padding(
          padding: HWEdgeInsetsDirectional.only(top: widget.index == 0 ? 12 : 16, end: 20, start: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.index == 0)
                    TripperText(
                      text: 'الانطلاق من:',
                      textStyle: Theme.of(context).textTheme.caption,
                    ),
                  TripperText(
                    text: place.address?.address ?? '',
                    textStyle: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
              TripperText(
                text: DateFormat('hh:mm a', defaultLocal.languageCode).format(place.createdAt!),
                textStyle: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
        );
      },
    );
  }

  ExpandableThemeData customExpandableThemeData() {
    return ExpandableThemeData(
      hasIcon: false,
      inkWellBorderRadius: BorderRadius.circular(7).r,
      useInkWell: true,
      tapHeaderToExpand: true,
    );
  }
}

class MySeparator extends StatelessWidget {
  const MySeparator({
    Key? key,
    this.width = 2,
    this.color = Colors.black,
    required this.isExpanded,
  }) : super(key: key);

  final double width;
  final Color color;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxHeight = constraints.constrainHeight();
        final dashWidth = width;
        const dashHeight = 5.0;
        final dashCount = (boxHeight / (2 * dashHeight)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.vertical,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}
