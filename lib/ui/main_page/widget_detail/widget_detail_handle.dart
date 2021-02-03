import 'package:flutter/widgets.dart';
import 'package:zoro_flutter/ui/main_page/widget_name_const.dart';
import 'package:zoro_flutter/widget/widgets_demo/widgets.dart';

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
      case WidgetNameConst.ABOUT_DIALOG:
        return AboutDialogDemo();
      case WidgetNameConst.ABOUT_LIST_TILE:
        return AboutListTileDemo();
      case WidgetNameConst.ACTION_CHIP:
        return ActionChipDemo();
      case WidgetNameConst.ALERT_DIALOG:
        return AlertDialogDemo();
      case WidgetNameConst.ANIMATED_ICON:
        return AnimatedIconDemo();
      case WidgetNameConst.BACK_BUTTON:
        return BackButtonDemo();
      case WidgetNameConst.BANNER:
        return BannerDemo();
      case WidgetNameConst.BOTTOM_SHEET:
        return BottomSheetDemo();
      case WidgetNameConst.BUILDER:
        return BuilderDemo();
      case WidgetNameConst.BUTTON_BAR:
        return ButtonBarDemo();
      case WidgetNameConst.CARD:
        return CardDemo();
      default:
        return Container();
    }
  }
}
