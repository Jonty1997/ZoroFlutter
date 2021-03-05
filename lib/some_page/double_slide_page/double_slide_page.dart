import 'package:flutter/cupertino.dart';
import 'package:zoro_flutter/common/common.dart';

class DoubleSlidePage extends StatefulWidget {
  static final route = 'DoubleSlidePage';

  @override
  _DoubleSlidePageState createState() => _DoubleSlidePageState();
}

class _DoubleSlidePageState extends State<DoubleSlidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PageView.builder(
            itemBuilder: (_, index) {},
            itemCount: 3,
          )
        ],
      ),
    );
  }

  Widget _buildPageItem(int index) => Container(
        color: Colors.green[(index + 1) * 100],

      );
}
