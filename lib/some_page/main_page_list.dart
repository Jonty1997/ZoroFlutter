import 'package:flutter/cupertino.dart';
import 'package:zoro_flutter/common/common.dart';
import 'package:zoro_flutter/some_page/some_page.dart';

class MainPageList extends StatefulWidget {
  static final route = 'MainPageList';

  @override
  _MainPageListState createState() => _MainPageListState();
}

class _MainPageListState extends State<MainPageList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SomePage"),
      ),
      body: ListView(
        children: [
          _buildTitleChildrenItem("我的", function: _openMinePage),
          _buildTitleChildrenItem("网页", function: _openWebViewPage),
          _buildTitleChildrenItem("滑动冲突", function: _openDoubleSlidePage),
        ],
      ),
    );
  }

  Widget _buildTitleChildrenItem(String title, {Function function}) {
    return InkWell(
      onTap: function,
      child: Padding(
        padding: commonPadding,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(999)),
                  color: context
                      .watch<ThemeProvider>()
                      .primarySwatch
                      .withOpacity(0.5),
                  border: Border.all(color: Colors.white70, width: 2)),
              child: Text(
                title.substring(0, 1),
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            SizedBox(width: Width.w_16),
            Text(
              title,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  void _openMinePage() =>
      Navigator.push(context, MaterialPageRoute(builder: (_) => MinePage()));

  void _openWebViewPage() =>
      Navigator.push(context, MaterialPageRoute(builder: (_) => WebviewPage()));

  void _openDoubleSlidePage() => Navigator.push(
      context, MaterialPageRoute(builder: (_) => DoubleSlidePage()));
}
