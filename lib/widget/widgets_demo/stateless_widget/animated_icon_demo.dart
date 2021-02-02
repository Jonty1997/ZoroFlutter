import 'package:flutter/cupertino.dart';
import 'package:zoro_flutter/common/common.dart';

/*
* api地址：https://api.flutter.dev/flutter/material/AnimatedIcon-class.html
*
* */
class AnimatedIconDemo extends StatefulWidget {
  static final route = 'AnimatedIconDemo';

  @override
  _AnimatedIconDemoState createState() => _AnimatedIconDemoState();
}

class _AnimatedIconDemoState extends State<AnimatedIconDemo>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            //重置控制器
            _controller.reset();
            //动画进行
            _controller.forward();

            //循环播放动画
            // _controller.repeat();
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.pause_play,
            progress: _controller,
            size: 40,
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
