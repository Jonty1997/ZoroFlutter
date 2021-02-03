import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* api:https://api.flutter.dev/flutter/material/BottomSheet-class.html
* */
class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = new AnimationController(vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlineButton(
          onPressed: () => Navigator.pop(context),
          child: Text("隐藏弹窗"),
        ),
        OutlineButton(
          onPressed: () => _openBottomSheet(),
          child: Text("Scaffold.of(context).showBottomSheet"),
        ),
        OutlineButton(
          onPressed: () => _openBottomSheet2(),
          child: Text("showModalBottomSheet"),
        ),
      ],
    );
  }

  void _openBottomSheet() {
    Scaffold.of(context).showBottomSheet(
      //弹窗内容
      (context) => BottomSheet(
          animationController: _controller,
          onClosing: () => Navigator.pop(context),
          builder: (_) => _buildContent()),
      //背景颜色
      backgroundColor: Theme.of(context).primaryColor,
    );
  }

  void _openBottomSheet2() {
    showModalBottomSheet(context: context, builder: (_) => _buildContent());
  }

  Widget _buildContent() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipOval(
          child: Image.asset("assets/image/logo.png", width: 50, height: 50),
        ),
        Text("受尽苦难而不厌，此乃修罗之道"),
      ],
    );
  }
}
