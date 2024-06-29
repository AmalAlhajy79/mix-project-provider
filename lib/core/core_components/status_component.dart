import 'package:flutter/material.dart';

import '../data_state/data_state.dart';

class StatusComponent extends StatelessWidget {
  final DataStatus status;
  final WidgetBuilder onError;
  final WidgetBuilder? onInit;
  final WidgetBuilder? onLoading;
  final WidgetBuilder onSuccess;

  const StatusComponent(
      {super.key,
      required this.status,
      required this.onError,
      this.onInit,
      this.onLoading,
      required this.onSuccess});

  @override
  Widget build(BuildContext context) {
    switch (status) {
      case DataStatus.error:
        return onError(context);
      case DataStatus.success:
        return onSuccess(context);
      case DataStatus.init:
        return onInit?.call(context)??const Center(child: CircularProgressIndicator());
      case DataStatus.loading:
        return onLoading?.call(context)??const Center(child: CircularProgressIndicator());
    }
    return const Placeholder();
  }
}
