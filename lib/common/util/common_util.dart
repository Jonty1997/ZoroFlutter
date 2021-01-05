import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///通用类
class CommonUtil {
  ///打开新页面
  static Future openPage(BuildContext context, Widget widget) {
    return Navigator.push(
        context, new MaterialPageRoute(builder: (context) => widget));
  }

  ///打开新页面(用页名)
  static Future openPageWithName(BuildContext context, String widget) {
    return Navigator.pushNamed(context, widget);
  }

  ///打开新页面代替旧页面
  static Future openPageReplacement(BuildContext context, Widget widget) {
    return Navigator.pushReplacement(
        context, new MaterialPageRoute(builder: (context) => widget));
  }

  ///打开新页面代替旧页面(用页名)
  static Future openPageReplacementWithName(BuildContext context, widget) {
    return Navigator.pushReplacementNamed(context, widget);
  }

  ///关闭页面知道route
  static closeUntil(BuildContext context, {String route}) {
    return Navigator.popUntil(context,
        route == null ? (route) => route == null : ModalRoute.withName(route));
  }

  ///关闭所有页面(或直到某页面)并打开该页面
  ///可以修改默认[route],比如到Main
  static closeAllAndOpenPage(BuildContext context, Widget widget,
      {String route}) {
    return Navigator.pushAndRemoveUntil(
        context,
        new MaterialPageRoute(builder: (context) => widget),
        route == null ? (route) => route == null : ModalRoute.withName(route));
  }

  ///关闭页面
  static closePage(BuildContext context, {dynamic msg}) {
    msg == null ? Navigator.of(context).pop() : Navigator.of(context).pop(msg);
  }
}
