import 'package:flutter/material.dart';
import 'package:seeking_cat/common/constant/string/StrConst.dart';
import 'package:seeking_cat/pages/GoodsPage.dart';

class HomePage extends StatefulWidget {
  final String _title;

  HomePage(this._title);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: NestedScrollView(
          physics: BouncingScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 135.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "images/ic_home_bg.jpg",
                    fit: BoxFit.cover, // 占满
                  ),
                ),
              )
            ];
          },
          body: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: TabBar(
                tabs: <Widget>[
                  Tab(text: StrConst.news),
                  Tab(text: StrConst.search_goods),
                  Tab(text: StrConst.lose_goods),
                ],
                labelStyle: TextStyle(fontSize: 20.0),
                unselectedLabelStyle: TextStyle(fontSize: 12.0),
              ),
              body: TabBarView(children: [
                GoodsPage(),
                GoodsPage(),
                GoodsPage(),
              ]),
            ),
          )),
    );
  }
}
