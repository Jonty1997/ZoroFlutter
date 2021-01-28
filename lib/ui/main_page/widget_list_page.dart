import 'package:flutter/cupertino.dart';
import 'package:zoro_flutter/common/common.dart';
import 'package:zoro_flutter/ui/ui.dart';
import 'package:zoro_flutter/widget/model/category_list.dart';
import 'package:zoro_flutter/widget/model/widget_model.dart';
import 'package:zoro_flutter/widget/widget_data_manage.dart';

class WidgetListPage extends StatefulWidget {
  static final route = 'WidgetListPage';

  @override
  _WidgetListPageState createState() => _WidgetListPageState();
}

class _WidgetListPageState extends State<WidgetListPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WidgetList"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          CategoryList categoryItem = WidgetDataManage.categoryList[index];

          return ExpansionTile(
            title: Text(categoryItem.title),
            children: categoryItem.widgetList
                .map((e) => _buildTitleChildrenItem(e))
                .toList(),
          );
        },
        itemCount: WidgetDataManage.categoryList.length,
      ),
    );
  }

  Widget _buildTitleChildrenItem(WidgetModel item) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => WidgetDetailPage(widgetName: item.name ?? '')));
      },
      child: Padding(
        padding: commonPadding,
        child: Row(
          children: [
            Hero(
              tag: item.name ?? '',
              child: Icon(Icons.wb_sunny),
            ),
            SizedBox(width: Width.w_16),
            Text(item.name ?? ""),
          ],
        ),
      ),
    );
  }
}
