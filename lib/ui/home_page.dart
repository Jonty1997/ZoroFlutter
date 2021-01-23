import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:zoro_flutter/common/common.dart';

class HomePage extends StatefulWidget {
  static final route = 'HomePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _swiperList = [
    {
      "title": "",
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
        itemCount: 3,
      );
}
