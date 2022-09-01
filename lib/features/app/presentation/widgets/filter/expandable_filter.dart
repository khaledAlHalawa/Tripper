import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/core/utils/extensions/state_ext.dart';
import 'package:app/core/utils/responsive_padding.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpandableFilter extends StatefulWidget {
  const ExpandableFilter({
    Key? key,
    this.isSubExpandable = true,
    required this.title,
    this.expandedWidget,
    this.collapsedWidget,
    this.trailing,
    this.onChange,
  }) : super(key: key);

  final bool isSubExpandable;
  final ValueChanged<bool>? onChange;
  final String title;
  final Widget? expandedWidget;
  final Widget? collapsedWidget;
  final Widget? trailing;
  @override
  State<ExpandableFilter> createState() => _ExpandableFilterState();
}

class _ExpandableFilterState extends State<ExpandableFilter> {
  late ExpandableController _controller;
  TextStyle? titleTheme;

  @override
  void initState() {
    super.initState();
    _controller = ExpandableController();
    _controller.addListener(() {
      widget.onChange?.call(_controller.expanded);
    });
  }

  @override
  dispose(){
    _controller.removeListener(() { });
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    titleTheme = widget.isSubExpandable
        ? textTheme.bodyText1!.copyWith(color: colorScheme.grey300)
        : textTheme.subtitle1!.copyWith(color: colorScheme.grey600);

    return ExpandableNotifier(
      controller: _controller,
      child: ScrollOnExpand(
        scrollOnCollapse: true,
        scrollOnExpand: true,
        child: ExpandableTheme(
          data: customExpandableThemeData(),
          child: ExpandablePanel(
            expanded: widget.expandedWidget ?? const SizedBox(),
            collapsed: widget.collapsedWidget ?? Container(),
            controller: _controller,
            header: header(),
            builder: (_, collapsed, expanded) {
              return Expandable(collapsed: collapsed, expanded: expanded);
            },
          ),
        ),
      ),
    );
  }

  Widget header() {
    return Builder(
      builder: (context) {
        var controller = ExpandableController.of(context, required: true)!;

        return Padding(
          padding: HWEdgeInsetsDirectional.only(top: 12),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: colorScheme.grey300, width: 1),
                ),
                width: 18,
                height: 18,
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                alignment: AlignmentDirectional.centerStart,
                child: Checkbox(
                  value: controller.expanded,
                  onChanged: (newVal) {
                    _controller.toggle();
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color: colorScheme.grey300, width: 1),
                  ),
                  splashRadius: 5,
                  activeColor: Colors.transparent,
                  checkColor: colorScheme.grey300,
                  side: BorderSide(color: colorScheme.grey300, width: 1),
                ),
              ),
              10.horizontalSpace,
              TripperText(text: widget.title, textStyle: titleTheme),
              if (widget.trailing != null) ...{
                const Spacer(),
                widget.trailing!,
              },
            ],
          ),
        );
      },
    );
  }

  ExpandableThemeData customExpandableThemeData() {
    return ExpandableThemeData(
      collapseIcon: Icons.arrow_drop_up_rounded,
      expandIcon: Icons.arrow_drop_down_rounded,
      iconColor: Theme.of(context).colorScheme.onBackground,
      inkWellBorderRadius: BorderRadius.circular(7).r,
      useInkWell: false,
      tapHeaderToExpand: widget.trailing == null,
      hasIcon: widget.trailing == null,
    );
  }
}
