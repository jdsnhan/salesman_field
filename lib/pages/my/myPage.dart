import 'package:flutter/material.dart';
import '../../components/cate_card.dart';
import '../../components/widget_item_container.dart';
import '../../models/cat.dart';

class MyPage extends StatefulWidget {
  MyPage({Key key}) : super(key: key);

  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  List<Cat> categories = [];

  @override
  void initState() {
    super.initState();
    renderCats();
  }

  void renderCats() {
    setState(() {
      Cat cat = new Cat(
          id: 1,
          name: '手机打卡',
          desc: '手机定位',
          depth: 1,
          parentId: 0,
          path: '/');
      categories.add(cat);
      Cat cat1 = new Cat(
          id: 1,
          name: '工作日报',
          desc: '工作日报',
          depth: 1,
          parentId: 0,
          path: '/');
      categories.add(cat1);
      Cat cat2 = new Cat(
          id: 1,
          name: '质量投诉',
          desc: '质量投诉',
          depth: 1,
          parentId: 0,
          path: '/');
      categories.add(cat2);
      Cat cat3 = new Cat(
          id: 1,
          name: '工作轨迹',
          desc: '工作轨迹',
          depth: 1,
          parentId: 0,
          path: '/');
      categories.add(cat3);
        Cat cat4 = new Cat(
          id: 1,
          name: '修改密码',
          desc: '修改密码',
          depth: 1,
          parentId: 0,
          path: '/');
      categories.add(cat4);
    });
  }

  Widget buildGrid() {
    // 存放最后的widget
    List<Widget> tiles = [];
    for (Cat item in categories) {
      tiles.add(new CateCard(category: item));
    }
    return new ListView(
      children: tiles,
    );
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child:   GridView.count(
    //       crossAxisCount: 3,
    //       mainAxisSpacing: 10.0,
    //       crossAxisSpacing: 4.0,
    //       padding: const EdgeInsets.all(30.0),
    //       childAspectRatio: 1.3,
    //     children: <Widget>[
    //       GridTile(
    //         child: Container(
    //           child: IconButton(icon:Icon(Icons.add_a_photo),),
    //         ),
    //       ),
    //       GridTile(
    //         child: Container(
    //           child: Text("审批状态查询"),
    //         ),
    //       ),
    //     ],
    //   )
    // );

    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(
          '我的',
          style: TextStyle(
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              tooltip: '搜索',
              onPressed: () {
                print('Shopping cart opened.');
              })
        ],
      ),
      body: 
      Container(
        padding: const EdgeInsets.only(bottom: 10.0, top: 5.0),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/paimaiLogo.png'),
              alignment: Alignment.bottomRight),
        ),
        child: WidgetItemContainer(
            categories: this.categories, columnCount: 3, isWidgetPoint: false),
      ),
    );
  }
}