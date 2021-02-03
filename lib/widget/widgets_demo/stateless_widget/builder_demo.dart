import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* api:https://api.flutter.dev/flutter/widgets/Builder-class.html
* */
class BuilderDemo extends StatefulWidget {
  @override
  _BuilderDemoState createState() => _BuilderDemoState();
}

class _BuilderDemoState extends State<BuilderDemo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Builder(
          builder: (_) => FloatingActionButton(
            onPressed: () {
              Scaffold.of(_)
                  .showSnackBar(SnackBar(content: Text('hello builder')));
            },
            child: Icon(Icons.add),
          ),
        )
      ],
    );
  }
}
