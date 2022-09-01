import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../core/base/viewmodels/base_viewmodel.dart';

class MobxLoadingPage<T extends BaseViewmodel> extends StatelessWidget {
  const MobxLoadingPage({
    Key? key,
    required this.viewmodel,
    required this.child,
    this.loadingWidget = const Center(child: CircularProgressIndicator()),
    this.barrierColor = const Color(0xFFc7c7c7),
    this.animationDuration = const Duration(milliseconds: 400),
  }) : super(key: key);

  final Widget child;

  final T viewmodel;
  final Widget loadingWidget;

  final Color barrierColor;

  final Duration animationDuration;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Stack(
        children: [
          AbsorbPointer(absorbing: viewmodel.isLoading, child: child),
          Positioned.fill(
            child: AnimatedSwitcher(
              duration: animationDuration,
              child: viewmodel.isLoading
                  ? Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(color: barrierColor.withOpacity(0.3)),
                      child: loadingWidget,
                    )
                  : const SizedBox(width: 0, height: 0),
            ),
          ),
        ],
      ),
    );
  }
}
