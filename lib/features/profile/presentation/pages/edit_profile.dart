import 'dart:io';
import 'package:app/common/helper/show_message.dart';
import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/core/utils/extensions/mobx.dart';
import 'package:app/core/utils/extensions/state_ext.dart';
import 'package:app/core/utils/form_utils.dart';
import 'package:app/features/app/domain/repositories/prefs_repository.dart';
import 'package:app/features/app/presentation/viewmodel/app_providers.dart';
import 'package:app/features/app/presentation/widgets/tripper_app_bar/app_bar_params.dart';
import 'package:app/features/app/presentation/widgets/tripper_app_bar/tripper_appbar.dart';
import 'package:app/features/app/presentation/widgets/tripper_elvated_button.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:app/features/auth/domain/entities/user.dart';
import 'package:app/features/profile/domain/use_cases/update_profile_photo.dart';
import 'package:app/features/profile/presentation/manager/user_viewmodel.dart';
import 'package:app/features/profile/presentation/pages/reset_password_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/utils/form_state_mixin.dart';
import '../../../../core/utils/responsive_padding.dart';
import '../../../../core/utils/validator.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../app/presentation/widgets/animated_dialog.dart';
import '../../../app/presentation/widgets/mobx_future_builder.dart';
import '../../../app/presentation/widgets/pick_image_bottom_sheet.dart';
import '../../../app/presentation/widgets/tripper_app_bar/app_bar_utils.dart';
import '../../../app/presentation/widgets/tripper_dropdown_menu.dart';
import '../../../app/presentation/widgets/tripper_image_component.dart';
import '../../../app/presentation/widgets/tripper_loader.dart';
import '../../../app/presentation/widgets/tripper_text_field/tripper_text_field.dart';
import '../../../city/domain/entities/city.dart';
import '../../../city/presentation/manager/city_viewmodel.dart';
import '../../domain/use_cases/update_profile_usecase.dart';

class EditProfileScreen extends ConsumerStatefulWidget {
  const EditProfileScreen({Key? key, required this.user}) : super(key: key);

  final User user;
  @override
  ConsumerState<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends ConsumerState<EditProfileScreen> with FormStateMinxin {
  CityViewModel? cityViewmodel;
  UserViewmodel? userViewmodel;
  File? _selectedFile;
  bool isUploadedNewImage = false;
  int? _selectedCityId;
  String? _selectedGender;
  PrefsRepository prefsRepository = GetIt.I<PrefsRepository>();

  @override
  Widget build(BuildContext context) {
    cityViewmodel = ref.watch(AppProvidersContainer.cityProvider);
    userViewmodel = ref.watch(AppProvidersContainer.userProvider);

    return Scaffold(
      appBar: TripperAppBar(
        appBarParams: AppBarParams(leadingAppBar: LeadingAppBar.back),
      ),
      body: Form(
        key: form.key,
        autovalidateMode: AutovalidateMode.always,
        child: ListView(
          padding: HWEdgeInsets.symmetric(vertical: 20, horizontal: 20),
          children: [
            Observer(
              builder: (context) {
                ImageComponentMode mode;
                if (isUploadedNewImage) {
                  mode = ImageComponentMode.picker;
                } else if (_selectedFile != null && userViewmodel!.updateProfileImageFuture.isSuccess) {
                  mode = ImageComponentMode.upload;
                } else if (userViewmodel!.isLoading) {
                  mode = ImageComponentMode.loading;
                } else if (userViewmodel!.updateProfileImageFuture.isFailure) {
                  mode = ImageComponentMode.reUpload;
                } else {
                  mode = ImageComponentMode.picker;
                }

                return Align(
                  alignment: AlignmentDirectional.topCenter,
                  child: TripperImageComponent(
                    imageUrl:  _selectedFile != null ? null : '${user.link}',
                    image: _selectedFile,
                    isUploadedNewImage: mode == ImageComponentMode.picker,
                    mode: mode,
                    onTap: () {
                      PickImageBottomSheet.showBottomSheet(
                        context: context,
                        onPickFile: (context, file) {
                          if (file == null) return;
                          Navigator.pop(context);
                          _selectedFile = file;
                          isUploadedNewImage = false;
                          setState(() {});
                        },
                      );
                    },
                    onUpdateImage: (file) {
                      userViewmodel!.updateProfilePhoto(UpdatePhotoProfileParams(file: file), onSuccess: () {
                        isUploadedNewImage = true;
                        setState(() {});
                      });
                    },
                  ),
                );
              },
            ),
            28.verticalSpace,
            TripperTextField(
              controller: form.controllers[0],
              focusNode: form.nodes[0],
              inputDecorationType: InputDecorationType.outline,
              decorationParam: InputDecorationParam(hintText: LocaleKeys.auth_lbl_firstname),
              maxLines: 1,
              validator: (value) => RequiredValidator(errorText: 'هذا الحقل مطلوب.').call(value ?? ''),
              onFieldSubmitted: (value) {
                form.nodes[2].requestFocus();
              },
            ),
            20.verticalSpace,
            TripperTextField(
              controller: form.controllers[1],
              focusNode: form.nodes[2],
              inputDecorationType: InputDecorationType.outline,
              decorationParam: InputDecorationParam(hintText: LocaleKeys.auth_lbl_lastname),
              validator: (value) => RequiredValidator(errorText: 'هذا الحقل مطلوب.').call(value ?? ''),
              maxLines: 1,
            ),
            20.verticalSpace,
            // TripperTextField(
            //   controller: form.controllers[2],
            //   focusNode: form.nodes[2],
            //   inputDecorationType: InputDecorationType.outline,
            //   decorationParam: InputDecorationParam(hintText: LocaleKeys.auth_lbl_email),
            //   validator: emailValidator(),
            //   maxLines: 1,
            // ),
            // 20.verticalSpace,
            citiesWidget(),
            20.verticalSpace,
            TripperDropDownMenu(
              focusNode: form.nodes[4],
              items: const ['ذكر', 'أنثى'],
              hint: LocaleKeys.auth_lbl_gender,
              value: user.gender?.translate,
              onChange: (value) {},
              onSaved: (value) {
                _selectedGender = value == 'ذكر' ? "male" : "female";
              },
              validator: (value) => RequiredValidator(errorText: 'هذا الحقل مطلوب.').call(value ?? ''),
            ),
            25.verticalSpace,
            Observer(builder: (context) {
              if (userViewmodel!.isLoading) {
                return const SizedBox();
              }
              return Align(
                alignment: AlignmentDirectional.topCenter,
                child: GestureDetector(
                  onTap: () {
                    showAnimatedDialog(context, widget: const ResetPasswordPage());
                  },
                  child: TripperText(
                    text: 'إعادة تعيين كلمة المرور',
                    textStyle: Theme.of(context).textTheme.bodyText2?.copyWith(
                          color: Theme.of(context).colorScheme.grey,
                          decoration: TextDecoration.underline,
                        ),
                  ),
                ),
              );
            }),
            60.verticalSpace,
            Observer(builder: (context) {
              return TripperElevatedButton(
                text: 'حفظ التغيرات',
                onPressed: onUpdateProfile,
                isLoading: userViewmodel!.isLoading,
              );
            })
          ],
        ),
      ),
    );
  }

  User get user => widget.user;

  @override
  void initState() {
    super.initState();
    ref.read(AppProvidersContainer.cityProvider).fetchCities();

    form.controllers[0].text = user.firstName!;
    form.controllers[1].text = user.lastName!;
    form.controllers[2].text = user.email!;
  }

  Widget citiesWidget() {
    return Observer(
      builder: (context) {
        return MobxFutureBuilder<List<City>?>(
          future: cityViewmodel!.citiesFuture,
          onSuccess: (res) => TripperDropDownMenu<City>(
            items: res?.map((e) => e).toList() ?? [],
            hint: LocaleKeys.auth_lbl_city,
            value: res?.singleWhere(
              (element) => element.id == user.cityId,
              orElse: () => const City(id: -1, name: ""),
            ),
            onChange: (value) {},
            onSaved: (value) {
              _selectedCityId = (value as City).id;
            },
            validator: (value) => RequiredValidator(errorText: 'هذا الحقل مطلوب.').call(value?.name ?? ''),
          ),
          onError: (res) {
            return TripperDropDownMenu(
              hint: LocaleKeys.auth_lbl_city,
              icon: GestureDetector(
                onTap: cityViewmodel?.fetchCities,
                child:
                    SizedBox(height: 30, width: 25, child: Icon(Icons.refresh, color: colorScheme.grey300, size: 18)),
              ),
              validator: (value) => RequiredValidator(errorText: 'هذا الحقل مطلوب.').call(value ?? ''),
            );
          },
          onLoading: () => TripperDropDownMenu<String>(
            hint: LocaleKeys.auth_lbl_city,
            icon: TripperLoader(size: 18),
            validator: (value) => RequiredValidator(errorText: 'هذا الحقل مطلوب.').call(value ?? ''),
          ),
        );
      },
    );
  }

  @override
  int get numberOfFields => 5;

  onUpdateProfile() {
    form.validate(() {
      FocusScope.of(context).unfocus();

      if (user.firstName == form.controllers[0].text.trim() &&
          user.lastName == form.controllers[1].text.trim() &&
          user.cityId == _selectedCityId &&
          user.gender == (_selectedGender == 'male' ? Gender.male : Gender.female)) {
        showMessage("الرجاء تعديل البيانات قبل الحفظ والمتابعة.", hasError: true);

        return;
      }
      userViewmodel!.updateProfileInfo(
        UpdateProfileParams(
          cityId: _selectedCityId.toString(),
          gender: _selectedGender,
          firstname: form.controllers[0].text.trim(),
          lastname: form.controllers[1].text.trim(),
        ),
        onSuccess: () => Navigator.pop(context),
      );
    });
  }
}

class AnimatedRoute extends PageRouteBuilder {
  final Widget widget;

  AnimatedRoute(this.widget)
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => widget,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var begin = const Offset(0.0, 1.0);
            var end = Offset.zero;
            var tween = Tween(begin: begin, end: end);
            var offsetAnimation = animation.drive(tween);
            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        );
}
