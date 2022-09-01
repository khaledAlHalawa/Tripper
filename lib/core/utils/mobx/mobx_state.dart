import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_it/get_it.dart';
import 'package:app/core/base/viewmodels/base_viewmodel.dart';
import 'package:app/core/utils/extensions/build_context.dart';
import '../colors.dart';
import 'side_effect_mixin.dart';

abstract class MobxState<T extends StatefulWidget, V extends BaseViewmodel> extends State<T> with SideEffectMinxin {
  final V viewmodel = GetIt.I<V>();
  ThemeData? theme;
  TextTheme? textTheme;
  @override
  void initState() {
    super.initState();
    addContextHandlerDisposer(viewmodel);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // TODO(abd): check if this not make error or we should try to put it in initState()
    addConnectionErroHandlerDisposer(viewmodel, handler: connectionErroHandler);
    theme = context.theme;
    textTheme = theme?.textTheme;
  }

  @override
  void dispose() {
    disposeSideEffects();
    viewmodel.dispose();
    super.dispose();
  }

  void connectionErroHandler(String errorMessage) {
    Fluttertoast.showToast(
      msg: errorMessage,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: darkGrey,
      textColor: white,
      fontSize: 16.0,
    );
  }
}