import 'package:flutter/cupertino.dart';
import 'package:zoro_flutter/ui/ui.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoute() {
    return {
      HomePage.route: (_) => HomePage(),
      LaunchPage.route: (_) => LaunchPage(),
      WidgetListPage.route: (_) => WidgetListPage(),
      WidgetDetailPage.route: (_) => WidgetDetailPage(),
      ViewCodePage.route: (_) => ViewCodePage(),
    };
  }
}
