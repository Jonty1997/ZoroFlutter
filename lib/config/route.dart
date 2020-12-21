import 'package:flutter/cupertino.dart';
import 'package:zoro_flutter/ui/common_widget/sku_select.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoute() {
    return {
      SkuSelect.route: (_) => SkuSelect(),
    };
  }
}
