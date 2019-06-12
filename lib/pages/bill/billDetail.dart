import 'package:flutter/material.dart';

class BillDetail extends StatelessWidget {
  final arguments;
  BillDetail({this.arguments});
  List _getMapData() {
    List<Widget> list = new List();
    this.arguments.forEach((key, value) {
      list.add(Container(
        child: ListTile(
          title: Text("$key".padRight(16 - "$key".length, ".") + "" + "$value",),
        ),
        decoration: BoxDecoration(
            //加边框的效果
            border: Border.all(
                color: Color.fromRGBO(233, 233, 233, 0.9), width: 1)),
      ));
    });
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("订单详情页"),
          centerTitle: true,
        ),
        body: ListView(
          children: this._getMapData(),
        )
        );
  }
}
