import 'package:app/features/app/presentation/widgets/tripper_app_bar/app_bar_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app/common/constant/constant.dart';
import 'package:app/core/utils/extensions/num.dart';
import '../../utils/page_position.dart';
import '../../viewmodel/app_providers.dart';
import '../../viewmodel/tripper_viewmodel.dart';
import '../image_view/svg_view.dart';
import '../tripper_text.dart';
import 'app_bar_params.dart';

class TripperAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const TripperAppBar({
    Key? key,
    required this.appBarParams,
  }) : super(key: key);

  final AppBarParams appBarParams;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewmodel = ref.watch(AppProvidersContainer.tripperViewmodelProvider);
    return Observer(
      builder: (context) {
        return AppBar(
          title: title(context, viewmodel),
          backgroundColor: appBarParams.backgroundColor ?? Theme.of(context).colorScheme.surface,
          leading: appBarParams.leadingAppBar.icon(context),
          actions: actions(viewmodel),
          elevation: appBarParams.elevation,
          shadowColor: appBarParams.shadowColor,
          surfaceTintColor: appBarParams.surfaceTintColor,
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  Widget title(BuildContext context, TripperViewModel viewmodel) {
    if (appBarParams.title != null) {
      return TripperText(
        text: appBarParams.title!,
        textStyle: Theme.of(context).textTheme.headline5,
        translation: appBarParams.translateTitle,
      );
    }
    return AnimatedOpacity(
      duration: 300.milliseconds,
      opacity: viewmodel.page == PagePosition.profile || viewmodel.page == PagePosition.home ? 0 : 1,
      child: TripperText(
        text: viewmodel.page.appBarTitle,
        textStyle: Theme.of(context).textTheme.headline5,
        translation: appBarParams.translateTitle,
      ),
    );
  }

  List<Widget>? actions(TripperViewModel viewmodel) {
    if (appBarParams.action != null) {
      return appBarParams.action;
    }
    else if (viewmodel.page == PagePosition.home && appBarParams.title == null) {
      return [
        Padding(
            padding: EdgeInsetsDirectional.only(end: ksp24),
          child: SvgPictureView(
            TripperAssets.ksvLogoPrimary,
            height: ksp24,
          ),
        ),
      ];
    }
    return [];
  }
}
