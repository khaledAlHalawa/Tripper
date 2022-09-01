import 'package:app/core/error/failures.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:app/features/app/presentation/widgets/tripper_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum ErrorStateTypes {
  internet,
  error,
}

extension ErrorStateTypesUtils on ErrorStateTypes {
  Widget get image {
    switch (this) {
      case ErrorStateTypes.internet:
        return Image.asset('assets/images/lost-wifi-connection.webp', scale: 1.5);
      case ErrorStateTypes.error:
        return Image.asset('assets/images/something-went-wrong.webp', scale: 3);
    }
  }

  String get title {
    switch (this) {
      case ErrorStateTypes.internet:
        return 'لا يوجد انترنت';
      case ErrorStateTypes.error:
        return 'هناك خطب ما';
    }
  }

  String? get descriptions {
    switch (this) {
      case ErrorStateTypes.internet:
        return 'تحقق من اتصالك بالانترنت ثم أعد المحاولة مجدداً.';
      case ErrorStateTypes.error:
        return 'عذراَ هناك مشكلة سنحاول حلها سريعاَ.';
    }
  }
}

class TripperErrorState extends StatelessWidget {
  TripperErrorState({
    Key? key,
    required this.error,
    this.title,
    this.description,
    this.onRetry,
  }) : super(key: key);

  final dynamic error;
  final String? title;
  final String? description;
  final VoidCallback? onRetry;

  late ErrorStateTypes errorStateTypes;

  @override
  Widget build(BuildContext context) {
    errorStateTypes = getErrorType;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        20.verticalSpace,
        errorStateTypes.image,
        25.verticalSpace,
        TripperText(
          text: title ?? errorStateTypes.title,
          textStyle: Theme.of(context).textTheme.button,
        ),
        if (errorStateTypes.descriptions != null) ...{
          10.verticalSpace,
          TripperText(
            text: description ?? errorStateTypes.descriptions!,
            textStyle: Theme.of(context).textTheme.bodyText2,
          ),
        },
        20.verticalSpace,
        TripperTextButton(
          text: 'أعد المحاولة',
          onPressed: onRetry,
        ),
        20.verticalSpace,
      ],
    );
  }

  ErrorStateTypes get getErrorType {
    print(error);
    print(((error as DioFailure).message));
    if (error is DioFailure) {
      if ((error as DioFailure).message.contains('HttpException: Connection reset by peer') ||
          (error as DioFailure).message.contains('Connecting timed out')) {
        return ErrorStateTypes.internet;
      }
      return ErrorStateTypes.error;
    }

    return ErrorStateTypes.internet;
  }
}
