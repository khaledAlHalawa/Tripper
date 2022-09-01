import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobx/mobx.dart';
import '../../utils/colors.dart';
import '../../utils/mobx/navigator/nav_order.dart';

part 'base_viewmodel.g.dart';

typedef ContextHandler<T> = T Function(BuildContext context);


abstract class BaseViewmodel extends _BaseViewmodel with _$BaseViewmodel {
  BaseViewmodel();
}

abstract class _BaseViewmodel with Store {
  _BaseViewmodel();

  final scaffoldKey = GlobalKey<ScaffoldState>();


  @observable
  bool isLoading = false;

  @observable
  NavOrder? navigator;

  @observable
  ContextHandler? contextHandler;

  @observable
  String? connectionError;

  @action
  void navigate({required NavOrder order}) {
    navigator = order;
  }

  @action
  void getContext(ContextHandler handler) {
    contextHandler = handler;
  }

  @action
  void startLoading() {
    isLoading = true;
  }

  @action
  void stopLoading() {
    isLoading = false;
  }

  @action
  Future<T> loadingRequest<T>(Future<T> Function() callback) async {
    connectionError = null;
    startLoading();
    final response = await callback();
    stopLoading();
    return response;
  }


  @action
  void showSnack(
    String message, {
    VoidCallback? action,
    Color backgroundColor = darkGrey,
    Color disabledTextColor = white,
    Color textColor = white,
    Duration duration = const Duration(minutes: 10),
    GlobalKey<ScaffoldState>? scaffoldKey,
  }) {
    (scaffoldKey ?? this.scaffoldKey).currentState!. showSnackBar(snackBarWidget(
          message,
          action: action,
          backgroundColor: backgroundColor,
          disabledTextColor: disabledTextColor,
          duration: duration,
          textColor: textColor,
        ));
  }

  SnackBar snackBarWidget(
    String message, {
    VoidCallback? action,
    Color backgroundColor = darkGrey,
    Color disabledTextColor = white,
    Color textColor = white,
    Duration duration = const Duration(minutes: 10),
  }) {
    return SnackBar(
      duration: duration,
      action: action != null
          ? SnackBarAction(
              label: 'retry',
              onPressed: action,
              disabledTextColor: disabledTextColor,
              textColor: textColor,
            )
          : null,
      content: Text(
        message,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
      backgroundColor: backgroundColor,
    );
  }

  void unknownErrorHandler(dynamic cause) {
    getContext((context) {
      Fluttertoast.showToast(
        msg: 'msg_something_wrong',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: darkGrey,
        textColor: white,
        fontSize: 16.0,
      );
    });
  }

  @protected
  ObservableFuture<T> futureWrapper<T>(
    Future<T> Function() block, {
    void Function(String?)? catchBlock,
    void Function(dynamic cause)? unknownErrorHandler,
    bool useLoader = false,
  }) {
    connectionError = null;
    if (useLoader) {
      startLoading();
    }
    return ObservableFuture(_wrapError<T>(
      block(),
      block: catchBlock,
      unknownErrorHandler: unknownErrorHandler,
    ).whenComplete(() {
      if (useLoader) {
        stopLoading();
      }
    }));
  }

  Future<T> _wrapError<T>(
    Future<T> future, {
    void Function(String?)? block,
    void Function(dynamic cause)? unknownErrorHandler,
  }) =>
      future.catchError((error) {
        // if (error is CallException && error.cause is NoInternetFailure) {
        //   logger.e('NetworkError in base view model $error');
        //   connectionError = 'msg_no_internet';
        // } else if (error is CallException && error.cause is ServerFailure) {
        //   logger.e('ServerFailure in base view model ${error.cause.message}');
        //   block!(error.cause.message);
        // } else {
        //   logger.e('unknown error in base view model $error');
        //   unknownErrorHandler != null ? unknownErrorHandler(error) : this.unknownErrorHandler(error);
        // }
        throw error;
      });

  Future<void> dispose() {
    return Future.value();
  }


  @action
  void toggleLoading() => isLoading = !isLoading;
}
