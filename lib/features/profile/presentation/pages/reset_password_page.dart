import 'dart:ui';

import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/core/utils/extensions/state_ext.dart';
import 'package:app/core/utils/form_state_mixin.dart';
import 'package:app/core/utils/form_utils.dart';
import 'package:app/core/utils/responsive_padding.dart';
import 'package:app/features/app/presentation/widgets/tripper_elvated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/utils/validator.dart';
import '../../../app/presentation/widgets/tripper_text.dart';
import '../../../app/presentation/widgets/tripper_text_field/tripper_text_field.dart';
import '../../domain/use_cases/reset_password_usecase.dart';
import '../manager/user_viewmodel.dart';

class ResetPasswordPage extends ConsumerStatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends ConsumerState<ResetPasswordPage> with FormStateMinxin {
  UserViewmodel userViewmodel = GetIt.I<UserViewmodel>();

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 1.2, sigmaY: 1.2),
      child: Dialog(
        insetPadding: HWEdgeInsets.symmetric(horizontal: 20, vertical: 30),
        backgroundColor: Theme.of(context).colorScheme.background,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10).r),
        child: Form(
          key: form.key,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: SingleChildScrollView(
            padding: HWEdgeInsets.symmetric(horizontal: 15, vertical: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: HWEdgeInsets.only(bottom: 20),
                  child: TripperText(
                    text: 'إعادة تعيين كلمة المرور',
                    textStyle: textTheme.subtitle1?.copyWith(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Theme.of(context).colorScheme.onBackground
                          : colorScheme.grey600,
                    ),
                  ),
                ),
                Padding(
                  padding: HWEdgeInsets.only(bottom: 20),
                  child: TripperTextField(
                    inputDecorationType: InputDecorationType.outlinePassword,
                    decorationParam: InputDecorationParam(hintText: 'كلمة المرور القديمة'),
                    maxLines: 1,
                    onFieldSubmitted: (val) => form.nodes[1].requestFocus(),
                    validator: (value) => passwordValidator().call(value),
                    textInputAction: TextInputAction.next,
                    controller: form.controllers[0],
                    focusNode: form.nodes[0],
                  ),
                ),
                Padding(
                  padding: HWEdgeInsets.only(bottom: 20),
                  child: TripperTextField(
                    inputDecorationType: InputDecorationType.outlinePassword,
                    decorationParam: InputDecorationParam(hintText: 'كلمة المرور الجديدة'),
                    maxLines: 1,
                    onFieldSubmitted: (val) => form.nodes[2].requestFocus(),
                    validator: (value) => passwordValidator().call(value),
                    textInputAction: TextInputAction.next,
                    controller: form.controllers[1],
                    focusNode: form.nodes[1],
                  ),
                ),
                Padding(
                  padding: HWEdgeInsets.only(bottom: 30),
                  child: TripperTextField(
                    inputDecorationType: InputDecorationType.outlinePassword,
                    decorationParam: InputDecorationParam(hintText: 'تأكيد كلمة المرورالجديدة'),
                    maxLines: 1,
                    onFieldSubmitted: (value) => onChangePassword(),
                    validator: (value) {
                      if (value == null || value.toString().trim() == '') {
                        return 'هذا الحقل مطلوب';
                      }
                      if (value.toString().length < 8) {
                        return 'أدخل 8 محارف على الأقل';
                      }
                      if (value != form.controllers[1].text) {
                        return 'الرجاء التأكد من أن كلمة السر وتأكيدها متطابقتين';
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.send,
                    controller: form.controllers[2],
                    focusNode: form.nodes[2],
                  ),
                ),
                Observer(
                  builder: (context) {
                    return Padding(
                      padding: HWEdgeInsets.only(bottom: 10),
                      child: TripperElevatedButton(
                        text: 'إعادة تعيين',
                        onPressed: onChangePassword,
                        isLoading: userViewmodel.isLoading,
                      ),
                    );
                  },
                ),
                Observer(builder: (context) {
                  return TripperElevatedButton(
                    text: 'إلغاء',
                    onPressed: () {
                      if (userViewmodel.isLoading) {
                        return;
                      }
                      Navigator.pop(context);
                    },
                    tripperButtonStyle: TripperButtonStyle.secondary,
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  int get numberOfFields => 3;

  onChangePassword() {
    form.validate(() {
      FocusScope.of(context).unfocus();
      userViewmodel.resetPassword(
        ResetPasswordParams(
          oldPassword: form.controllers[0].text,
          newPassword: form.controllers[1].text,
          confirmNewPassword: form.controllers[2].text,
        ),
        onSuccess: () => Navigator.pop(context),
      );
    });
  }
}
