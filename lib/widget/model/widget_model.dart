class WidgetModel {
  WidgetModel();

  String name;
  String nameCN;
  String desc;
  int level;
  List<String> info;

  factory WidgetModel.fromJson(Map<String, dynamic> json) =>
      _$WidgetListFromJson(json);
}

WidgetModel _$WidgetListFromJson(Map<String, dynamic> json) {
  return WidgetModel()
    ..name = json['name'] as String
    ..desc = json['desc'] as String
    ..nameCN = json['nameCN'] as String
    ..level = json['level'] as int
    ..info = json['widget_list'] as List<String>;
}
