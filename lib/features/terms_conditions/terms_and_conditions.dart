import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/features/app/presentation/widgets/tripper_app_bar/app_bar_params.dart';
import 'package:app/features/app/presentation/widgets/tripper_app_bar/app_bar_utils.dart';
import 'package:app/features/app/presentation/widgets/tripper_app_bar/tripper_appbar.dart';
import 'package:flutter/material.dart';

import '../../core/utils/responsive_padding.dart';
import '../app/presentation/widgets/tripper_text.dart';

class TermsAndConditionsScreen extends StatefulWidget {
  const TermsAndConditionsScreen({Key? key}) : super(key: key);

  @override
  State<TermsAndConditionsScreen> createState() => _TermsAndConditionsScreenState();
}

class _TermsAndConditionsScreenState extends State<TermsAndConditionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TripperAppBar(
        appBarParams: AppBarParams(leadingAppBar: LeadingAppBar.back, title: 'الشروط والأحكام'),
      ),
      body: SingleChildScrollView(
        padding: HWEdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: TripperText(
          text: '''
          إزالة أو تغيير أي علامة تجارية أو حقوق نشر أو أي إشعار آخر للملكية الفكرية
استخدام اسم مستخدم أو كلمة مرور خاصة بأي مستخدم آخر
نشر محتوى مستخدم أو تسجيل أسماء مستخدمين مسيئة أو إباحية أو مسيئة أو فاحشة أو تمييزية أو تدعو إلى العنف
استخدام Tripper في أنشطة غير قانونية
استخدام الخدمة لكشف معلومات الملكية أو السرية الخاصة بطرف ثالث أو لنفسك والتي لا يُقصد عرضها للعالم
نسخ أو استيراد ملفات محلية لا تمتلك الحقوق القانونية لنسخها أو استيرادها
الكشط أو الزحف ، سواء بالوسائل الآلية أو يدويًا ، للوصول إلى المعلومات وعرضها وجمعها
الهندسة العكسية أو التفكيك أو إلغاء التحويل البرمجي أو التعديل أو إنشاء أعمال مشتقة ما لم يكن هذا التقييد محظورًا على وجه التحديد بموجب القانون المعمول به
منع الإعلانات أو إنشاء أو توزيع أدوات لمنع الإعلانات''',
          textStyle: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(color: Theme.of(context).colorScheme.grey600.withOpacity(0.8)),
        ),
      ),
    );
  }
}
