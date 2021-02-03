import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* api:https://api.flutter.dev/flutter/material/ButtonBar-class.html
* */
class ButtonBarDemo extends StatefulWidget {
  @override
  _ButtonBarDemoState createState() => _ButtonBarDemoState();
}

class _ButtonBarDemoState extends State<ButtonBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonBar(
          buttonTextTheme: ButtonTextTheme.accent,
          //子按钮高度
          buttonHeight: 100,
          //子组件列表排序方式
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(onPressed: _show, child: Text("FlatButton")),
            OutlineButton(onPressed: _show, child: Text("FlatButton")),
            BackButton(onPressed: _show),
            Container(height: 50, width: 50, color: Colors.red),
            Container(height: 50, width: 50, color: Colors.green),
          ],
        ),
      ],
    );
  }

  void _show() => showAboutDialog(context: context);
}
