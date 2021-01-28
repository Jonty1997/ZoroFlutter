import 'package:zoro_flutter/widget/model/widget_model.dart';

class CategoryList {
  CategoryList();

  String title;
  String desc;
  List<WidgetModel> widgetList;

  factory CategoryList.fromJson(Map<String, dynamic> json) =>
      _$CategoryListFromJson(json);
}

CategoryList _$CategoryListFromJson(Map<String, dynamic> json) {
  return CategoryList()
    ..title = json['title'] as String
    ..desc = json['desc'] as String
    ..widgetList = (json['widget_list'] as List)
        ?.map((e) => e == null
            ? null
            : WidgetModel.fromJson(e["data"] as Map<String, dynamic>))
        ?.toList();
}
