import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../../../core/base/viewmodels/base_viewmodel.dart';

class MobxProvider<T extends BaseViewmodel> extends StatefulWidget {
  const MobxProvider({
    Key? key,
    this.viewmodel,
    this.automaticDispose = true,
    required this.child,
  })  : super(key: key);

  final Widget child;
  final T? viewmodel;
  final bool automaticDispose;

  @override
  State<MobxProvider<T>> createState() => _MobxProviderState<T>();
}

class _MobxProviderState<T extends BaseViewmodel> extends State<MobxProvider<T>> {
  T? viewmodel;
  late bool automaticDispose;

  @override
  void initState() {
    viewmodel = widget.viewmodel ?? GetIt.I<T>();
    automaticDispose = widget.automaticDispose;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InheritedMobxWidget(
      viewmodel: viewmodel,
      childMobx: widget.child,
    );
  }

  @override
  void dispose() {
    if (automaticDispose) {
      viewmodel!.dispose();
    }
    super.dispose();
  }
}

class InheritedMobxWidget<T extends BaseViewmodel> extends InheritedWidget {
  const InheritedMobxWidget({
    Key? key,
    this.viewmodel,
    required this.childMobx,
  })  : super(key: key, child: childMobx);


  final Widget childMobx;

  final T? viewmodel;

  static T of<T extends BaseViewmodel>(BuildContext context) {
    final viewmodel = context.dependOnInheritedWidgetOfExactType<InheritedMobxWidget<T>>()?.viewmodel;
    if (viewmodel == null) {
      throw Exception(
        'ERROR ==> InheritedMobxWidget can\'t find $T in context',
      );
    }
    return viewmodel;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
