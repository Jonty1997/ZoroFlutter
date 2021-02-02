import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoro_flutter/common/common.dart';

class BackButtonDemo extends StatefulWidget {
  @override
  _BackButtonDemoState createState() => _BackButtonDemoState();
}

class _BackButtonDemoState extends State<BackButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BackButton(
          color: Theme.of(context).primaryColor,
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
