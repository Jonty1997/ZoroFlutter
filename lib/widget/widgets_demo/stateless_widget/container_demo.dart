import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoro_flutter/common/common.dart';

class ContainerDemo extends StatefulWidget {
  @override
  _ContainerDemoState createState() => _ContainerDemoState();
}

class _ContainerDemoState extends State<ContainerDemo> {
  Alignment _alignment = Alignment.center;
  final _alignmentList = [
    Alignment.center,
    Alignment.topRight,
    Alignment.topLeft,
    Alignment.centerRight,
    Alignment.centerLeft,
    Alignment.bottomRight,
    Alignment.bottomLeft,
  ];
  final _alignmentNameList = [
    "center",
    "topRight",
    "topLeft",
    "centerRight",
    "centerLeft",
    "bottomRight",
    "bottomLeft"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              Text("alignment:"),
              SizedBox(width: 10),
              _buildDropdownButton(),
            ],
          ),
          Container(
            width: 200,
            height: 200,
            alignment: _alignment,
            color: Colors.purple,
            child: Container(
              color: Colors.blue,
              child: Text("我是子组件"),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDropdownButton() => Container(
        child: DropdownButton(
            items: _buildItems(),
            value: _alignment,
            onChanged: (v) {
              setState(() {
                _alignment = v;
              });
            }),
      );

  List<DropdownMenuItem<Alignment>> _buildItems() => _alignmentList
      .map((e) => DropdownMenuItem(
            value: e,
            child: Text(_alignmentNameList[_alignmentList.indexOf(e)]),
          ))
      .toList();
}
