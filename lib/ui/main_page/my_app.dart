import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:zoro_flutter/common/common.dart';
import 'package:zoro_flutter/ui/main_page/launch_page.dart';

import 'home_page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
        statusBarColor: context.watch<ThemeProvider>().statusBarColor,
        statusBarIconBrightness:
            context.watch<ThemeProvider>().statusBarIconBrightness);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    return MaterialApp(
      title: 'ZoroFlutter',
      theme: ThemeData(
        brightness: context.watch<ThemeProvider>().brightness,
        primarySwatch: context.watch<ThemeProvider>().primarySwatch,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: Routes.getRoute(),
      home: LaunchPage(),
    );
  }
}
