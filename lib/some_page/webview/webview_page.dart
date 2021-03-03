import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:zoro_flutter/common/common.dart';

class WebviewPage extends StatefulWidget {
  static final route = 'WebviewPage';

  @override
  _WebviewPageState createState() => _WebviewPageState();
}

class _WebviewPageState extends State<WebviewPage> {
  WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _back(),
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: _back,
            child: Icon(Icons.arrow_back_ios),
          ),
        ),
        body: WebView(
          onWebViewCreated: (WebViewController webViewController) {
            _controller = webViewController;
          },
          initialUrl: "https://flutter.cn",
          debuggingEnabled: true,
        ),
      ),
    );
  }

  Future _back() async {
    _controller.canGoBack().then((value) {
      if (value) {
        _controller.goBack();
      } else {
        Navigator.pop(context);
      }
    });
  }
}
