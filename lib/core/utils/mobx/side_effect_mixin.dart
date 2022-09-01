import 'package:app/core/utils/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../../base/viewmodels/base_viewmodel.dart';
import 'navigator/nav_order.dart';


mixin SideEffectMinxin<T extends StatefulWidget> on State<T> {
  final List<ReactionDisposer> _disposers = [];

  void addSideEffect(ReactionDisposer disposer) {
    _disposers.add(disposer);
  }

  void addSideEffects(List<ReactionDisposer> disposers) {
    _disposers.addAll(disposers);
  }

  void addNavDisposer(BaseViewmodel viewmodel) {
    addSideEffect(
      reaction(
        (_) => viewmodel.navigator,
        (NavOrder? order) {
          if (order is Pop) return context.pop(order.data);
          if (order is PushPage) {
            context.pushPage(order.child);
            return;
          }
        },
      ),
    );
  }

  void addContextHandlerDisposer(BaseViewmodel viewmodel) {
    addSideEffect(
      reaction(
        (_) => viewmodel.contextHandler,
        (ContextHandler? handler) {
          if (handler != null) {
            handler(context);
            viewmodel.contextHandler = null;
          }
        },
      ),
    );
  }

  void addConnectionErroHandlerDisposer(
      BaseViewmodel viewmodel, {
    void Function(String)? handler,
  }) {
    addSideEffect(
      reaction(
        (_) => viewmodel.connectionError,
        (String? errorMessage) {
          if (errorMessage != null) {
            handler!(errorMessage);
          }
        },
      ),
    );
  }

  disposeSideEffects() {
    for (var d in _disposers) {
      d();
    }
  }
}
