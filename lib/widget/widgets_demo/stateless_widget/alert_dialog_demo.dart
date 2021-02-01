import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AlertDialog(
          title: Row(
            children: [
              ClipOval(
                child:
                    Image.asset("assets/image/logo.png", width: 50, height: 50),
              ),
              SizedBox(width: 16),
              Text("警告"),
            ],
          ),
          content: Text("阿祖收手吧，外面全是成龙"),
          actions: [
            FlatButton(onPressed: _showDialog, child: Text("游戏继续")),
            FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("投降")),
          ],
          elevation: 100,
        ),
      ],
    );
  }

  void _showDialog() => showDialog(
      context: context,
      //是否可以通过点击阴影部分关闭弹窗
      barrierDismissible: false,
      builder: (_) => AlertDialog(
            title: Row(
              children: [
                ClipOval(
                  child: Image.asset("assets/image/logo.png",
                      width: 50, height: 50),
                ),
                SizedBox(width: 16),
                Text("警告"),
              ],
            ),
            content: Text("阿祖收手吧，外面全是成龙"),
            actions: [
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("投降")),
            ],
            elevation: 100,
          ));
}
