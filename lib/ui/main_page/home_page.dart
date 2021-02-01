import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:zoro_flutter/common/common.dart';
import 'package:zoro_flutter/ui/main_page/widget_list_page.dart';

class HomePage extends StatefulWidget {
  static final route = 'HomePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _swiperList = [
    {
      "title": "Widget",
    },
    {
      "title": "Widget2",
    },
    {
      "title": "Widget3",
    },
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                Width.w_16,
                MediaQuery.of(context).padding.top + Height.h_10,
                Width.w_16,
                Height.h_10),
          ),
          Padding(
              padding: EdgeInsets.all(10),
              child: AspectRatio(
                aspectRatio: 2 / 1,
                child: _buildSwiper(),
              )),
        ],
      ),
    );
  }

  Widget _buildSwiper() => Swiper(
        itemCount: _swiperList.length,
        scale: 0.5,
        viewportFraction: 0.6,
        itemBuilder: (context, index) {
          var item = _swiperList[index];
          return InkWell(
            onTap: _openWidgetListPage,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Container(
                color: Theme.of(context)
                    .primaryColor
                    .withOpacity((index + 1) * 0.2),
                alignment: Alignment.center,
                child: Text(
                  item["title"],
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      );

  void _openWidgetListPage() =>
      Navigator.pushNamed(context, WidgetListPage.route);
}
