part of 'tripper_drawer.dart';

class _MenuItem extends StatelessWidget {
  const _MenuItem({
    Key? key,
    required this.icon,
    required this.text,
    this.onTap,
  }) : super(key: key);

  final String icon;
  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async{
        ZoomDrawer.of(context)?.close();
        await Future.delayed(const Duration(milliseconds: 300));
        onTap?.call();
      },
      child: Padding(
        padding: HWEdgeInsetsDirectional.only(top: 12,bottom: 12,start: 20),
        child: Row(
          children: [
            SvgPictureView(icon),
            Sp.w16(),
            TripperText(
              text: text,
              textStyle: Theme.of(context).textTheme.bodyText1!.copyWith(color: Theme.of(context).colorScheme.white),
            ),
          ],
        ),
      ),
    );
  }
}
