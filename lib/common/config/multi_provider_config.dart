import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:zoro_flutter/common/provider/theme_provider.dart';

///provider管理器
class MultiProviderConfig extends StatelessWidget {
  final Widget child;

  const MultiProviderConfig({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: child,
    );
  }
}
