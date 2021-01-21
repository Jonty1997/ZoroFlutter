import 'package:zoro_flutter/common/common.dart';
import 'ui/home_page.dart';

void main() {
  runApp(MultiProviderConfig(child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZoroFlutter',
      theme: ThemeData(
        brightness: context.watch<ThemeProvider>().brightness,
        primarySwatch: context.watch<ThemeProvider>().primarySwatch,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: Routes.getRoute(),
      home: HomePage(),
    );
  }
}
