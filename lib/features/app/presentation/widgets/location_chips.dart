import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationChips extends StatelessWidget {
  const LocationChips({
    Key? key,
    required this.location,
  }) : super(key: key);

  final String location;

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
          Icon(Icons.place, color: Theme.of(context).colorScheme.primary,size: 18),
          7.horizontalSpace,
          TripperText(
              text: location,
              adaptiveColor: false,
              textStyle: Theme.of(context).textTheme.caption?.copyWith(
                    color: Theme.of(context).colorScheme.grey300,
                  )),
        ],
      ),
    );
  }
}
