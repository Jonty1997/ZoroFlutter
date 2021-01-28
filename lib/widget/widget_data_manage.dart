import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:zoro_flutter/common/common.dart';

import 'model/category_list.dart';

class WidgetDataManage {
  static List<CategoryList> _categoryList = new List();
  static Map<String, dynamic> _widgetMap = new Map();

  static List<CategoryList> get categoryList => _categoryList;

  static Map<String, dynamic> get widgetMap => _widgetMap;

  ///初始化
  static Future init() async {
    await rootBundle.loadString("assets/category_list.json").then((value) {
      Map<String, dynamic> categoryMap = json.decode(value);
      if (categoryMap != null && categoryMap["data"] != null) {
        for (var item in categoryMap["data"]) {
          _categoryList.add(CategoryList.fromJson(item));
        }
      } else {
        debugPrint("无法加载：assets/category_list.json");
      }
    });
    await rootBundle.loadString("assets/widget.json").then((value) {
      Map<String, dynamic> widgetMap = json.decode(value);
      if (widgetMap != null) {
        _widgetMap = widgetMap;
      } else {
        debugPrint("无法加载：assets/widget.json");
      }
    });
  }
}
