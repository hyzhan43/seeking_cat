import 'package:flutter/material.dart';
import 'package:seeking_cat/common/constant/string/StrConst.dart';
import 'package:seeking_cat/pages/MainPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: StrConst.appName,
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new MainPage(),
    );
  }
}
