import 'package:flutter/cupertino.dart';
import 'package:zoro_flutter/common/common.dart';

///详情
class WidgetDetailPage extends StatefulWidget {
  static final route = 'WidgetDetailPage';

  @override
  _WidgetDetailPageState createState() => _WidgetDetailPageState();
}

class _WidgetDetailPageState extends State<WidgetDetailPage>
    with AfterLayoutMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(),
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {}
}
