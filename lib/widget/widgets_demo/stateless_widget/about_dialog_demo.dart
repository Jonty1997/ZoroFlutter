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
    return Container(
      child: AboutDialog(
        applicationVersion: "applicationVersion",
        applicationIcon: ClipOval(
          child: Image.asset(
            "assets/image/logo.png",
            width: 50,
            height: 50,
          ),
        ),
        applicationLegalese: "applicationLegalese",
      ),
      // child: OutlineButton(
      //   onPressed: () {
      //     showAboutDialog(context: context);
      //   },
      //   child: Text("AboutDialog"),
      // ),
    );
  }
}
