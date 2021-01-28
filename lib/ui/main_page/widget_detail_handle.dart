import 'package:flutter/widgets.dart';

class WidgetDetailHandle {
  static WidgetDetailHandle _detailHandle;

  static WidgetDetailHandle get detailHandle {
    if (_detailHandle == null) _detailHandle = WidgetDetailHandle();
    return _detailHandle;
  }

  Widget getDemo(String widgetName) {
    switch (widgetName) {
      case "":
        return Container();
      default:
        return Container();
    }
  }
}
