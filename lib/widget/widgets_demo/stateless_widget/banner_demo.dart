import 'package:flutter/cupertino.dart';
import 'package:zoro_flutter/common/common.dart';

/*
* api:https://api.flutter.dev/flutter/widgets/Banner-class.html
* */
class BannerDemo extends StatefulWidget {
  @override
  _BannerDemoState createState() => _BannerDemoState();
}

class _BannerDemoState extends State<BannerDemo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Banner(
          message: "banner",
          location: BannerLocation.bottomStart,
          color: Colors.red,
          child: Container(
            height: 100,
            width: 100,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
