import 'package:flutter/cupertino.dart';
import 'package:zoro_flutter/common/common.dart';

import 'view_code_handle.dart';

class ViewCodePage extends StatefulWidget {
  static final route = 'ViewCodePage';
  final String widgetName;

  const ViewCodePage({
    Key key,
    @required this.widgetName,
  }) : super(key: key);

  @override
  _ViewCodePageState createState() => _ViewCodePageState();
}

class _ViewCodePageState extends State<ViewCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.widgetName ?? ''),
      ),
      body: SourceCodeView(
        filePath: ViewCodeHandle().getFilePath(widget.widgetName),
        codeLinkPrefix: ViewCodeHandle().getCodeLinkPrefix(),
      ),
    );
  }
}
