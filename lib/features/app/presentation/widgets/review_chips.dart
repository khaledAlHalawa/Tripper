import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewChips extends StatelessWidget {
  const ReviewChips({
    Key? key,
    required this.review,
  }) : super(key: key);

  final double review;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(7).r,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7).r,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star_rate_rounded,
            color: Theme.of(context).colorScheme.yellow,
            size: 18,
          ),
          5.horizontalSpace,
          TripperText(
              text: review.toString(),
              adaptiveColor: false,
              textStyle: Theme.of(context).textTheme.caption?.copyWith(
                    color: Theme.of(context).colorScheme.grey300,
                  )),
        ],
      ),
    );
  }
}
