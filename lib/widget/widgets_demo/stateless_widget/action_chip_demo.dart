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
        ActionChip(label: Text("哈哈哈"), onPressed: () {}),
      ],
    );
  }
}
