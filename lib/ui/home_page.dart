import 'package:zoro_flutter/common/common_export_package.dart';

class HomePage extends StatefulWidget {
  static final route = 'HomePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.0,
          ),
          itemBuilder: _buildGridItem,
          itemCount: 5,
        ),
      ),
    );
  }

  Widget _buildGridItem(context, index) => Container(
        width: 100,
        height: 100,
        color: Colors.green[index * 100],
      );
}
