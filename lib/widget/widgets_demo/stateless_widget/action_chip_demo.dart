import 'package:flutter/cupertino.dart';
import 'package:zoro_flutter/common/common.dart';

class ActionChipDemo extends StatefulWidget {
  static final route = 'ActionClipDemo';

  @override
  _ActionChipDemoState createState() => _ActionChipDemoState();
}

class _ActionChipDemoState extends State<ActionChipDemo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ActionChip(
          avatar: ClipOval(
            child: Image.asset("assets/image/logo.png", width: 50, height: 50),
          ),
          label: Text("点击显示弹窗，长按显示提示"),
          labelPadding: EdgeInsets.all(5),
          //点击阴影范围
          pressElevation: 100,
          //长按提示
          tooltip: "提示",
          //形状样式
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(999))),
          //背景颜色
          backgroundColor: Theme.of(context).primaryColor,
          //阴影颜色
          shadowColor: Theme.of(context).primaryColor,
          //影深
          elevation: 8,
          onPressed: () => showAboutDialog(
              context: context,
              applicationIcon: ClipOval(
                child:
                    Image.asset("assets/image/logo.png", width: 50, height: 50),
              )),
        ),
      ],
    );
  }
}
