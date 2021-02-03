import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* api:https://api.flutter.dev/flutter/material/Card-class.html
* */
class CardDemo extends StatefulWidget {
  @override
  _CardDemoState createState() => _CardDemoState();
}

class _CardDemoState extends State<CardDemo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildContent("卡片化前"),
        Card(
          elevation: 10,
          color: Theme.of(context).primaryColor,
          shadowColor: Theme.of(context).primaryColor.withOpacity(0.5),
          child: _buildContent("卡片化后"),
        ),
      ],
    );
  }

  Widget _buildContent(String title) => Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(Icons.info),
            SizedBox(width: 10),
            Text(title ?? ''),
          ],
        ),
      );
}
