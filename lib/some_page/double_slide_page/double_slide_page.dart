import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:zoro_flutter/common/common.dart';

class DoubleSlidePage extends StatefulWidget {
  static final route = 'DoubleSlidePage';

  @override
  _DoubleSlidePageState createState() => _DoubleSlidePageState();
}

class _DoubleSlidePageState extends State<DoubleSlidePage>
    with SingleTickerProviderStateMixin {
  PageController _pageController = new PageController();
  TabController _tabController;
  final _titleList = [
    "1: 哈哈哈",
    "2: 嘿嘿嘿",
    "3: 黑乎乎",
    "4: 呵呵呵",
    "5: 嚯嚯嚯",
    "6: 嗨嗨嗨",
  ];

  int _pageIndex = 0;

  final int PAGE_MIN_DISTANCE = 120;
  int _pageLength = 6;
  bool _isAdd = true;
  bool _isReduce = true;

  @override
  void initState() {
    _tabController = new TabController(length: _pageLength, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _buildTab(),
          Text("就哈哈"),
          Expanded(
            child: PageView(
              controller: _pageController,
              physics: ClampingScrollPhysics(),
              children: [
                _wrapWithNotify(child: _buildPageItem(1)),
                _wrapWithNotify(child: _buildPageItem(2)),
                _wrapWithNotify(child: _buildPageItem(3)),
                _wrapWithNotify(child: _buildPageItem(4)),
                _wrapWithNotify(child: _buildPageItem(5)),
                _wrapWithNotify(child: _buildPageItem(6)),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTab() => TabBar(
        controller: _tabController,
        indicatorWeight: 14.0,
        isScrollable: true,
        labelColor: Colors.red,
        tabs: _titleList
            .map(
              (e) => Tab(
                text: e,
              ),
            )
            .toList(),
      );

  Widget _buildPageItem(int index) => Container(
        color: Colors.green[(index + 1) * 100],
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.maxFinite,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemBuilder: (_, index) => Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.red,
                  height: 80,
                  width: 80,
                  alignment: Alignment.center,
                  child: Text(
                    "${index.toString()}",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Center(
              child: Text("index:$index"),
            )
          ],
        ),
      );

  Widget _wrapWithNotify({Widget child}) {
    return NotificationListener<ScrollNotification>(
      child: child,
      onNotification: _handleNotification,
    );
  }

  bool _handleNotification(ScrollNotification notification) {
    if (notification is ScrollStartNotification) {
      _isAdd = true;
      _isReduce = true;
    }
    //大于最大，则可以翻页+1
    if (notification.metrics.pixels >
            notification.metrics.maxScrollExtent + PAGE_MIN_DISTANCE &&
        notification.metrics.extentBefore - notification.metrics.extentAfter >
            0 &&
        _isAdd &&
        _pageIndex < _pageLength) {
      _pageIndex++;
      _pageController.animateToPage(_pageIndex,
          duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
      _isAdd = false;
    }

    ///小于最小，则翻页-1
    if (notification.metrics.pixels <
            notification.metrics.minScrollExtent - PAGE_MIN_DISTANCE &&
        notification.metrics.extentBefore - notification.metrics.extentAfter <
            0 &&
        _isReduce &&
        _pageIndex > 0) {
      _pageIndex--;
      _pageController.animateToPage(_pageIndex,
          duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
      _isReduce = false;
    }

    return true;
  }
}
