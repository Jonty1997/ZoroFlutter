import 'package:zoro_flutter/common/common.dart';

///主题provider
class ThemeProvider with ChangeNotifier, DiagnosticableTreeMixin {
  Brightness _brightness = Brightness.light;
  Color _primarySwatch = Colors.green;

  Brightness get brightness => _brightness;

  Color get primarySwatch => _primarySwatch;

  void setBrightness(Brightness brightness) {
    _brightness = brightness;
    notifyListeners();
  }

  void setPrimarySwatch(Color color) {
    _primarySwatch = color;
    notifyListeners();
  }
}
