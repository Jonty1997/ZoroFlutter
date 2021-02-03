import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoro_flutter/common/common.dart';

/*
* api:https://api.flutter.dev/flutter/material/CheckboxListTile-class.html
* */
class CheckboxListTileDemo extends StatefulWidget {
  @override
  _CheckboxListTileDemoState createState() => _CheckboxListTileDemoState();
}

class _CheckboxListTileDemoState extends State<CheckboxListTileDemo> {
  bool _isSelect = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxListTile(
            value: _isSelect,
            // //选中颜色
            // activeColor: Colors.yellow,
            // //钩的颜色
            // checkColor: Colors.purple,
            //标题
            title: Text("title"),
            //副标题
            subtitle: Text("subtitle"),
            secondary: Icon(Icons.account_balance_sharp),
            //通常用于改编整个条目的颜色
            selected: _isSelect,
            //多选框相对于内容的位置
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.all(10),
            onChanged: (v) {
              _isSelect = v;
              if (mounted) setState(() {});
            }),
      ],
    );
  }
}
