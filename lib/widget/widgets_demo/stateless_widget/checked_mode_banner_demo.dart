import 'package:flutter/cupertino.dart';
import 'package:zoro_flutter/common/common.dart';

/*
* api:https://api.flutter.dev/flutter/widgets/CheckedModeBanner-class.html
* */
class CheckedModeBannerDemo extends StatefulWidget {
  @override
  _CheckedModeBannerDemoState createState() => _CheckedModeBannerDemoState();
}

class _CheckedModeBannerDemoState extends State<CheckedModeBannerDemo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckedModeBanner(
            child: Container(
          height: 100,
          width: 100,
          color: Theme.of(context).primaryColor,
        ))
      ],
    );
  }
}
