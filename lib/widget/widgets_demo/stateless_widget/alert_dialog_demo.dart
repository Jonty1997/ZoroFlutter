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
          title: Text("哈哈哈"),
          content: Text("呼呼呼"),
          actions: [
            Text("哈哈哈"),
            Text("哈哈哈"),
          ],
          elevation: 100,
        ),
      ],
    );
  }
}
