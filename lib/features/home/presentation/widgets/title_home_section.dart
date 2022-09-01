import 'package:app/config/theme/my_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/presentation/widgets/tripper_text.dart';

class TitleHomeSection extends StatelessWidget {
  const TitleHomeSection({Key? key, required this.title,this.onShowAll, this.lengthList}) : super(key: key);

  final String title;
  final VoidCallback? onShowAll;
  final int? lengthList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TripperText(
            text: title,
            textStyle: Theme.of(context).textTheme.headline5,
          ),
          if(onShowAll != null && (lengthList ?? 0) > 3)
          InkWell(
            onTap: onShowAll,
            child: TripperText(
              text: "عرض الكل",
              textStyle: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.grey300),
            ),
          ),
        ],
      ),
    );
  }
}
