import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoro_flutter/common/common.dart';

/*
* api:https://api.flutter.dev/flutter/material/Chip-class.html
* */
class ChipDemo extends StatefulWidget {
  static final route = 'ChipDemo';

  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Chip(
          //标签。通常为text
          label: Text("chip"),
          //标签的样式
          labelStyle:
              TextStyle(fontSize: 20, color: Theme.of(context).primaryColor),
          //标签的边距
          labelPadding: const EdgeInsets.all(10),
          //删除图标（右边控件，在[onDeleted]不为空时出现）
          deleteIcon: Icon(Icons.close,
              size: 26, color: Theme.of(context).primaryColor),

          ///点击删除图标回调
          onDeleted: () => Navigator.pop(context),

          ///删除图标的颜色，当Icon中color为空时生效
          deleteIconColor: Colors.red,

          ///长按删除图标提示
          deleteButtonTooltipMessage: "按得我有点痛~",

          ///形状样式
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),

          ///阴影颜色
          shadowColor: Theme.of(context).primaryColor.withOpacity(0.6),

          ///影深
          elevation: 10,

          avatar: ClipOval(
            child: Image.asset("assets/image/logo.png", width: 50, height: 50),
          ),
        )
      ],
    );
  }
}
