import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FromToSlider extends StatelessWidget {
  const FromToSlider({
    Key? key, required this.from, required this.to,
  }) : super(key: key);

  final double from;
  final double to;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _fromToWidget(context,from),
        _fromToWidget(context,to),
      ],
    );
  }

  Widget _fromToWidget(BuildContext context, double value) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.greyBorder,
        ),
        borderRadius: BorderRadius.circular(7).r,
      ),
      width: 100.w,
      height: 30,
      alignment: AlignmentDirectional.center,
      child: TripperText(
        text: '${value.toInt()} SP',
        textStyle: Theme.of(context).textTheme.caption?.copyWith(
              color: Theme.of(context).colorScheme.grey300,
            ),
      ),
    );
  }
}
