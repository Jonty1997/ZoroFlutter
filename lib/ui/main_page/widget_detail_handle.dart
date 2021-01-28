import 'package:flutter/widgets.dart';
import 'package:zoro_flutter/ui/main_page/widget_name_const.dart';
import 'package:zoro_flutter/widget/widgets/stateless_widget/container_demo.dart';

class WidgetDetailHandle {
  static WidgetDetailHandle _detailHandle;

  static WidgetDetailHandle get detailHandle {
    if (_detailHandle == null) _detailHandle = WidgetDetailHandle();
    return _detailHandle;
  }

  Widget getDemo(String widgetName) {
    switch (widgetName) {
      case WidgetNameConst.CONTAINER:
        return ContainerDemo();
      default:
        return Container();
    }
  }
}
