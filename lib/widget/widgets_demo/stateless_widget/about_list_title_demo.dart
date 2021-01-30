import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutListTileDemo extends StatefulWidget {
  @override
  _AboutListTileDemoState createState() => _AboutListTileDemoState();
}

class _AboutListTileDemoState extends State<AboutListTileDemo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AboutListTile(
          icon: Icon(
            Icons.info,
            size: 24,
            color: Colors.red,
          ),
          applicationIcon: ClipOval(
            child:
            Image.asset("assets/image/logo.png", width: 50, height: 50),
          ),
          aboutBoxChildren: [
            Text(
              "aboutBoxChildren1",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            Text(
              "aboutBoxChildren2",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
