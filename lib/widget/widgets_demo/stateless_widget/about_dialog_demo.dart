import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:zoro_flutter/common/common.dart';

class AboutDialogDemo extends StatefulWidget {
  @override
  _AboutDialogDemoState createState() => _AboutDialogDemoState();
}

class _AboutDialogDemoState extends State<AboutDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: AboutDialog(
            applicationVersion: "v1.0.0",
            applicationIcon: ClipOval(
              child:
                  Image.asset("assets/image/logo.png", width: 50, height: 50),
            ),
            applicationLegalese: "[view licenses]:跳转到证书页\n[close]:退出;",
          ),
        ),
        OutlineButton(
          onPressed: () {
            showAboutDialog(
              context: context,
              applicationVersion: "v1.0.0",
              applicationIcon: ClipOval(
                child:
                    Image.asset("assets/image/logo.png", width: 50, height: 50),
              ),
              applicationLegalese: "[view licenses]:跳转到证书页\n[close]:退出;",
            );
          },
          child: Text("showAboutDialog"),
        ),
      ],
    );
  }
}
