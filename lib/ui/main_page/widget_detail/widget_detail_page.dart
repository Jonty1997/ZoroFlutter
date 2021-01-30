import 'package:flutter/cupertino.dart';
import 'package:zoro_flutter/common/common.dart';
import 'file:///C:/Users/69427/IdeaProjects/zoro_flutter/lib/ui/main_page/view_code/view_code_page.dart';
import 'file:///C:/Users/69427/IdeaProjects/zoro_flutter/lib/ui/main_page/widget_detail/widget_detail_handle.dart';
import 'package:zoro_flutter/widget/model/widget_model.dart';
import 'package:zoro_flutter/widget/widget_data_manage.dart';

///详情
class WidgetDetailPage extends StatefulWidget {
  static final route = 'WidgetDetailPage';
  final String widgetName;

  const WidgetDetailPage({
    Key key,
    @required this.widgetName,
  }) : super(key: key);

  @override
  _WidgetDetailPageState createState() => _WidgetDetailPageState();
}

class _WidgetDetailPageState extends State<WidgetDetailPage> {
  String get _widgetName => widget.widgetName;
  WidgetModel _widgetModel;

  @override
  void initState() {
    _init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top + 10),
            _buildBar(),
            _buildHead(),
            _buildDivider(),
            _buildDemo(),
            _buildDivider(),
            _buildInfo(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  ///bar
  Widget _buildBar() => Container(
        width: double.maxFinite,
        padding: commonPaddingHorizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_back_ios, size: 24),
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: _collection,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.star_border, size: 24),
                  ),
                ),
                InkWell(
                  onTap: _code,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.code, size: 24),
                  ),
                ),
                InkWell(
                  onTap: _share,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.share, size: 24),
                  ),
                ),
              ],
            )
          ],
        ),
      );

  Widget _buildHead() => Container(
        padding: commonPadding,
        margin: commonPadding,
        decoration: BoxDecoration(
          color: context.watch<ThemeProvider>().primarySwatch.withOpacity(0.4),
          borderRadius: commonRadius,
        ),
        child: Row(
          children: [
            Expanded(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Text(_widgetModel?.name ?? ''),
                        SizedBox(width: Width.w_10),
                        Text(_widgetModel?.nameCN ?? ''),
                      ],
                    ),
                    SizedBox(height: Height.h_5),
                    Text(_widgetModel?.desc ?? ''),
                  ],
                ),
              ),
            ),
            SizedBox(width: Width.w_16),
            Hero(
              tag: _widgetName,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(999)),
                    color: context
                        .watch<ThemeProvider>()
                        .primarySwatch
                        .withOpacity(0.5),
                    border: Border.all(color: Colors.white70, width: 2)),
                child: Text(
                  _widgetModel.name.substring(0, 2),
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      );

  Widget _buildDivider() => Container(
        width: double.maxFinite,
        child: Divider(),
      );

  ///具体demo
  Widget _buildDemo() => Container(
        padding: EdgeInsets.symmetric(vertical: Height.h_5),
        child: WidgetDetailHandle().getDemo(_widgetName),
      );

  Widget _buildInfo() => Container(
        padding: commonPaddingHorizontal,
        color: Colors.grey.shade100,
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: (_widgetModel?.info ?? [])
              .map((e) => Padding(
                    padding: EdgeInsets.only(top: Height.h_10),
                    child: Text(e),
                  ))
              .toList(),
        ),
      );

  void _collection() {}

  void _code() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => ViewCodePage(
                  widgetName: _widgetName,
                )));
  }

  void _share() {}

  //初始化数据
  void _init() {
    if (WidgetDataManage.widgetMap != null &&
        WidgetDataManage.widgetMap[_widgetName] != null) {
      _widgetModel =
          WidgetModel.fromJson(WidgetDataManage.widgetMap[_widgetName]);
    }
    if (mounted) setState(() {});
  }
}
