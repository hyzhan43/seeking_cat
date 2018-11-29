import 'package:flutter/material.dart';

class GoodsPage extends StatefulWidget {
  @override
  _GoodsPageState createState() => _GoodsPageState();
}

class _GoodsPageState extends State<GoodsPage> {

  List<int> items = List.generate(16, (i) => i);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: items.length,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("Index $index"),
            );
          }
      ),
    );
  }
}
