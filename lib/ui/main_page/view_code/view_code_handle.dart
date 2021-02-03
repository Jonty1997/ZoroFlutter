import '../widget_name_const.dart';

class ViewCodeHandle {
  static ViewCodeHandle _viewCodeHandle;

  static ViewCodeHandle get viewCodeHandle {
    if (_viewCodeHandle == null) _viewCodeHandle = ViewCodeHandle();
    return _viewCodeHandle;
  }

  String getCodeLinkPrefix() =>
      "https://github.com/RoronoaZoro-Lee/ZoroFlutter/blob/master";

  String getFilePath(String widgetName) {
    switch (widgetName) {
      case WidgetNameConst.CONTAINER:
        return "lib/widget/widgets_demo/stateless_widget/container_demo.dart";
      case WidgetNameConst.ABOUT_DIALOG:
        return "lib/widget/widgets_demo/stateless_widget/about_dialog_demo.dart";
      case WidgetNameConst.ABOUT_LIST_TILE:
        return "lib/widget/widgets_demo/stateless_widget/about_list_title_demo.dart";
      case WidgetNameConst.ACTION_CHIP:
        return "lib/widget/widgets_demo/stateless_widget/action_chip_demo.dart";
      case WidgetNameConst.ALERT_DIALOG:
        return "lib/widget/widgets_demo/stateless_widget/alert_dialog_demo.dart";
      case WidgetNameConst.ANIMATED_ICON:
        return "lib/widget/widgets_demo/stateless_widget/animated_icon_demo.dart";
      case WidgetNameConst.BACK_BUTTON:
        return "lib/widget/widgets_demo/stateless_widget/back_button_demo.dart";
      case WidgetNameConst.BANNER:
        return "lib/widget/widgets_demo/stateless_widget/banner_demo.dart";
      default:
        return "lib/main.dart";
    }
  }
}
