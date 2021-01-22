import 'package:zoro_flutter/common/common.dart';

class HomePage extends StatefulWidget {
  static final route = 'HomePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _themProvider = ThemeProvider();

  @override
  void initState() {
    _themProvider = Provider.of<ThemeProvider>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(10),
              child: AspectRatio(
                aspectRatio: 2 / 1,
                child: _buildGridItem(context, 1),
              )),

        ],
      ),
    ));
  }

  Widget _buildGridItem(context, index) => GestureDetector(
        onTap: () {

        },
        child: Container(
          width: 100,
          height: 100,
          color: Colors.green[index * 100],
        ),
      );
}
