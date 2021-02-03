import 'package:zoro_flutter/common/common.dart';

///主题provider
class ThemeProvider with ChangeNotifier, DiagnosticableTreeMixin {
  Brightness _brightness = Brightness.light;
  Color _primarySwatch = Colors.green;
  Color _statusBarColor = Colors.transparent; //状态栏颜色
  Brightness _statusBarIconBrightness = Brightness.dark; //状态栏字体颜色

  Brightness get brightness => _brightness;

  Brightness get statusBarIconBrightness => _statusBarIconBrightness;

  Color get primarySwatch => _primarySwatch;

  Color get statusBarColor => _statusBarColor;

  void setBrightness(Brightness brightness) {
    _brightness = brightness;
    notifyListeners();
  }

  void setPrimarySwatch(Color color) {
    print("有通知");
    _primarySwatch = color;
    notifyListeners();
  }

  void setStatusBarColor(Color color) {
    _statusBarColor = color;
    notifyListeners();
  }

  void setStatusBarIconBrightness(Brightness brightness) {
    _statusBarIconBrightness = brightness;
    notifyListeners();
  }
}
