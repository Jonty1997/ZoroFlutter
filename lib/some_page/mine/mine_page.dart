import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
 * 我的页面
 */
class MinePage extends StatefulWidget {
  static final route = 'MinePage';

  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildHead(),
          SizedBox(height: 15),
          Expanded(child: _buildBottom()),
        ],
      ),
    );
  }

  Widget _buildCacheImage(String url,
          {double width, double height, BoxFit fit = BoxFit.cover}) =>
      CachedNetworkImage(
        imageUrl: url,
        fit: fit,
        width: width,
        height: height,
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
      );

  Widget _buildHead() => Container(
        color: Colors.white,
        child: Stack(
          children: [
            Image.asset(
              "assets/mine_bg_image.png",
              height: 123.5,
              width: double.maxFinite,
              fit: BoxFit.fitWidth,
            ),
            Container(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 85),
                    child: ClipOval(
                      child: _buildCacheImage("https://picsum.photos/80/80",
                          width: 67.5, height: 67.5),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 22),
                    child: Text(
                      "GcpCard",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                  _isActive
                      ? Padding(
                          padding: EdgeInsets.only(top: 16.5, bottom: 24.5),
                          child: Text(
                            "No. 1231231223",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff999999)),
                          ),
                        )
                      : _buildActiveButton(),
                ],
              ),
            )
          ],
        ),
      );

  Widget _buildActiveButton() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
        child: InkWell(
          onTap: _active,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(24.5)),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff00CABE),
                      Color(0xff03A8CB),
                    ])),
            padding: EdgeInsets.symmetric(vertical: 17),
            alignment: Alignment.center,
            child: Text(
              "Active My GcpCard",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      );

  Widget _buildBottom() => Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                _buildRowItem("Privacy Policy", function: _openPrivacyPolicy),
                _buildRowItem("Terms of Service",
                    function: _openTermsOfService),
                _buildRowItem("Sign out", function: _signOut),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25.5),
              child: Text(
                "1.0.0",
                style: TextStyle(fontSize: 12, color: Color(0xff999999)),
              ),
            )
          ],
        ),
      );

  Widget _buildRowItem(String title, {Function function}) => InkWell(
        onTap: () {
          if (function != null) function();
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 19.5, right: 13.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title ?? "",
                style: TextStyle(color: Color(0xff393D43), fontSize: 14),
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              )
            ],
          ),
        ),
      );

  //激活
  void _active() {}

  //打开隐私政策
  void _openPrivacyPolicy() {}

  //打开服务条款
  void _openTermsOfService() {}

  //退出
  void _signOut() {}
}
