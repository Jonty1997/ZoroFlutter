import 'package:flutter/cupertino.dart';
import 'package:zoro_flutter/common/common.dart';
import 'package:zoro_flutter/ui/main_page/home_page.dart';
import 'package:zoro_flutter/widget/widget_data_manage.dart';

class LaunchPage extends StatefulWidget {
  static final route = 'LaunchPage';

  @override
  _LaunchPageState createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> {
  @override
  void initState() {
    _init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("欢迎页"),
      ),
    );
  }

  void _openHomePage() =>
      Navigator.pushReplacementNamed(context, HomePage.route);

  Future _init() async {
    await WidgetDataManage.init();
    _openHomePage();
  }
}
