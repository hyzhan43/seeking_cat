import 'package:flutter/material.dart';
import 'package:seeking_cat/common/constant/CommonConst.dart';
import 'package:seeking_cat/common/constant/icons/IconConst.dart';
import 'package:seeking_cat/common/constant/string/StrConst.dart';
import 'package:seeking_cat/pages/HomePage.dart';
import 'package:seeking_cat/pages/MePage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;
  String title = StrConst.homeTab;
  List<Widget> _pageView;

  @override
  void initState() {
    _pageView = List();

    _pageView..add(HomePage('寻物猫'))..add(MePage('Me'));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageView[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return HomePage('New Page');
          }));
        },
        tooltip: StrConst.publish,
        child: Icon(Icons.add),
      ),
      // 设置 float 按钮 在中间
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.yellow, // bottom 颜色
        shape: CircularNotchedRectangle(), // 设置 bottom 中间 凹陷
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(IconConst.home),
              onPressed: () {
                setState(() {
                  _index = CommonConst.home;
                });
              },
            ),
            IconButton(
              icon: Icon(IconConst.cat),
              onPressed: () {
                setState(() {
                  _index = CommonConst.me;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
