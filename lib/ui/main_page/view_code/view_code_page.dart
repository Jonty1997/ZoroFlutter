import 'package:flutter/cupertino.dart';
import 'package:zoro_flutter/common/common.dart';

class ViewCodePage extends StatefulWidget {
  static final route = 'ViewCodePage';

  @override
  _ViewCodePageState createState() => _ViewCodePageState();
}

class _ViewCodePageState extends State<ViewCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SourceCodeView(
        filePath:
            "lib/widget/widgets_demo/stateless_widget/container_demo.dart",
        codeLinkPrefix:
            "https://github.com/RoronoaZoro-Lee/ZoroFlutter/blob/master",
      ),
    );
  }
}
