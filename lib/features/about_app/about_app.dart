import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/features/app/presentation/widgets/image_view/svg_view.dart';
import 'package:app/features/app/presentation/widgets/tripper_app_bar/app_bar_params.dart';
import 'package:app/features/app/presentation/widgets/tripper_app_bar/app_bar_utils.dart';
import 'package:app/features/app/presentation/widgets/tripper_app_bar/tripper_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/constant/design/assets_provider.dart';
import '../../core/utils/responsive_padding.dart';
import '../app/presentation/widgets/tripper_text.dart';

class AboutAppScreen extends StatefulWidget {
  const AboutAppScreen({Key? key}) : super(key: key);

  @override
  State<AboutAppScreen> createState() => _AboutAppScreenScreenState();
}

class _AboutAppScreenScreenState extends State<AboutAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TripperAppBar(
        appBarParams: AppBarParams(leadingAppBar: LeadingAppBar.back, title: 'حول التطبيق'),
      ),
      body: Center(
        child: Padding(
          padding: HWEdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPictureView(TripperAssets.ksvLogoPrimary),
                50.verticalSpace,
                TripperText(
                  text: '''
                  تعتبرالسياحةمناهمالعواملةالمؤثرعلىاقتصاداتالعديدمنالدولوفيسوريةالتيكانتتعتبر
امالمقاصدالسياحيةالأولىفيالعالم,حيثكانللسياحةاسهامبنحو41%فيالناتجالمحلي
الإجماليعام1144ولكنبدأالعدالتنازليمنذالشهرالثالثمنالسنةذاتهاحتىتدمرقطاع
السياحةبالكاملخلالالأزمة.
كمالاحظنامنخلالتصفحمواقعالأنترنتضعففيالترويجالسياحيوشحالمعلوماتالسياحية
حولبلدناالحبيبسورية،حيثلاتوجدمنصةسياحيةرسمية(تطبيقاوموقع)اماالمواقعالسياحية
العالميةفهيشبهمهمشةللسياحةالسوريةحيثأنمعلوماتهاقديمةوغيرمعرفةبشكلجيدلمدى
روعةالسياحةالسورية،وباعتمادمعظمالأشخاصفيوقتناهذاعلىةزيارالمواقعوالتطبيقات
السياحيةوالبحثعنمعلوماتعنالبلدالمقصودالسياحةإليهقبلقيامهملاتهمبجوالسياحية
يواجهونمشكلةحيثذكرناسابقاضعفاهتمامالمواقعالعالميةبالسياحةالسوريةوبالنسبةللبحث
العامعندماتكتبكلمةسوريةيظهرلكصورالدمارومعلوماتاقتصاديةوسياسيةلاصلةلها
بالسياحةوإذاتمالتخصيصبالكتابةمثلكتابةةعبار"السياحةفيسورية"فإننتائجالبحثغير
مرضية.
هذهالمشاكلخلقتالحاجةإلىبناءمنصةسياحيةسوريةتتكونمنموقعويبوتطبيقموبايللتلبية
جميعالاحتياجاتالمختلفةفمثلااالسائحيبحثعبرشبكةالويبوعندظهورتطبيقوموقعيفضل
ةزيارالموقعبدلاامنتحميلوتثبيتالتطبيقأماالسائحالداخلي(يالسورالمقيمفيسورية)فيفضل
التطبيقكونهيستخدمهبشكلمستمرلمتابعةالرحلاتالسياحيةالمقامة،بالإضافةإلىبناءموقع
مديرةلإدارالمنصةومحتواها.
وبناء على ذلك عمدنا الى تصميم منصة للخدمات السياحية السورية والتي لها عدة اهداف:
بناء الوعي حول الأثار والمعالم الموجودة في سوريا.
ـتأمين جميع المعلومات الموثقة بالصور حولالأماكن السياحية (فنادق, مطاعم....).
التعرف على اهم الرحلات السياحية المقامة.

اجعات.تشارك تجارب السائحين عبر التقييمات والمر
تنشيط السياحة الداخية والخارجية.
تم تصميم هذه المنصة عن طريق نظام (server - client)حبث تم تصميم تطبيق السيرفرليستقبل
طلبات الزبائن ويحقق مركزية البيانات بالإضافة لإمكانية استقبال الطلبات من عدة منصات.
التقنيات المستخدمةواسباب استخدامها:
تطبيق السيرفرLaravel.
لات الحماية ومعايير هندسةوقد اعتماد هذه التقنية بسبب اعتمادها على العديد من بروتوكو
البرمجيات, بالإضافة لكون الإستضافة متاحة بشكل اكبر اذ يلزم لتشغيل التطبيقVMبنظام
لينكس وهذه الإستضافة تكون بالعادة ارخص من باقي الإستضافات وذلك لنفس المواصفات
التقنية.
تطبيق الموبايلFlutter.
ات إطار العمل هذا هو امكانية تصدير التطبيقاحد اهم الميزالمكتوبةبلغة الDartالى
تطبيق يعمل الىAndroidوأيضا تطبيق يعمل علىIOSوبالتالي تم تخفيض تكاليف
البرمجة بشكل كبير بسبب استخدام شيةفربرمجيةواحدة للتطبيقين.
تطبيق الويبوالمديرReactJS.
وهوإطار عمل مقدم شركةMetaوالتييتميز بتصميم تطبيقات الSPAوالتي تمكن
المستخدم من تجربة استخدام سهلة ومرنة, واعتمادها على معايير هندسية عالية.
                  ''',
                  textStyle: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: Theme.of(context).colorScheme.grey600.withOpacity(0.8)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
