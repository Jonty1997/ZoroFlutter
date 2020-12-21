import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///@author[zoro]
///通用的sku选择器
class SkuSelect extends StatefulWidget {
  static final route = 'SkuSelect';

  @override
  _SkuSelectState createState() => _SkuSelectState();
}

class _SkuSelectState extends State<SkuSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SKU选择器"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showSkuSelectDialog();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  //显示弹窗
  void _showSkuSelectDialog() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (context, bottomState) {
            return GestureDetector(
              // behavior: HitTestBehavior.translucent,
              onTap: () {
                Navigator.pop(context);
              },
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 3,
                  ),
                  Expanded(
                      child: Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16))),
                          child: _buildDialogWidget())),
                ],
              ),
            );
          });
        });
  }

  //底部弹窗内容
  Widget _buildDialogWidget() {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: ListView(
                children: [],
              ),
            )
          ],
        ),
        Positioned(
            right: 8,
            top: 8,
            child: InkWell(
              child: Icon(
                Icons.arrow_drop_down_outlined,
                size: 30,
              ),
            ))
      ],
    );
  }
}
