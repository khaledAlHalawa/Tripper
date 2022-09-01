import 'package:app/common/helper/show_message.dart';
import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/features/app/domain/repositories/prefs_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

class FavoriteButton extends StatelessWidget {
  FavoriteButton({Key? key, required this.isFavorite, this.onTap}) : super(key: key);

  final bool isFavorite;
  final VoidCallback? onTap;
  final PrefsRepository _prefsRepository = GetIt.I<PrefsRepository>();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(!_prefsRepository.hasUser) {
          showMessage('لا يمكن إضافة العنصر للمفضلة سجل دخول للتطبيق أولاً',hasError: true);
          return ;
        }
        onTap?.call();
      },
      borderRadius: BorderRadius.circular(90),
      child: Container(
        width: 40.sp,
        height: 40.sp,
        decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: Icon(
          isFavorite ? Icons.favorite_rounded  : Icons.favorite_outline_rounded,
          size: 24.sp,
          color: isFavorite ? Colors.red : Theme.of(context).colorScheme.grey600,
        ),
      ),
    );
  }
}
