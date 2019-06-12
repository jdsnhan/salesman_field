import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../data/listData.dart';

class HomePageTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomePageTestState();
  }
}

class HomePageTestState extends State<HomePageTest> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(
          '首页',
          textAlign: TextAlign.center,
          style: TextStyle(
          ),
        ),
        actions: <Widget>[
        ],
      ),
      body: MyHomeContent(),
    );
  }
}

class MyHomeContent extends StatelessWidget {
  List<Widget> _getData() {
    List<Widget> list = new List();
    list.add(new Container(
      child: Column(
        children: <Widget>[
          Icon(Icons.home, size: 80.0, color: Colors.blue),
          Text("第一位置"),
        ],
      ),
      alignment: Alignment.center,
    ));
    list.add(new Container(
      child: new Center(
        child: Icon(Icons.save, size: 80.0, color: Colors.blue),
      ),
      alignment: Alignment.center,
    ));
    list.add(new Container(
      child: new Center(
        child: Icon(
          Icons.school,
          size: 80.0,
          color: Colors.blue,
        ),
      ),
      alignment: Alignment.center,
    ));
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: listData.map((value) {
      return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    value["imageURL"],
                    fit: BoxFit.cover,
                  )),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(value["imageURL"]),
                ),
                title: Text(value["owner"]),
                subtitle: Text(value["primary"]),
              )
            ],
          ));
    }).toList());
  }
}
