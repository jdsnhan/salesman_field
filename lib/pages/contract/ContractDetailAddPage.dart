import 'package:flutter/material.dart';

class ContractDetailAddPage extends StatefulWidget {
  @override
  _ContractDetailAddPageState createState() => _ContractDetailAddPageState();
}

class _ContractDetailAddPageState extends State<ContractDetailAddPage> {
  int groupValue = 1;
  Color _color=Colors.white;
  onChange(val) {
    this.setState(() {
      groupValue = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('新增合同子页'),
        actions:<Widget>[
            new IconButton(
              tooltip: '保存',
              onPressed: () {
                // Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              icon: Icon(Icons.save),
            ),]
      ),
      body: WillPopScope(
        onWillPop: () {
          return back();
        },
        child:
        Container(
          
          child: Column(
            children: <Widget>[
              Padding(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
              ),
              Container(
                decoration: new BoxDecoration(
                    color: _color,
                    border:  Border(
                    bottom: const BorderSide(
                    width: 1.0, color: Color(0xFFEFEFEF)),
                  ),),
                  child: new GestureDetector(
                onTap: () {
                  setState(() { });
                },
                onTapDown:(TapDownDetails details){
                  setState(() {_color=Colors.black;  });
                } ,
                 onTapUp:(TapUpDetails details){
                  setState(() {_color=Colors.white;  });
                } ,
                child:
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child:Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                      child:  Text('客户名称'),),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text('唐山乐山教育局'),
                  ),
                  Expanded(
                    flex: 1,
                    child:Align( alignment: FractionalOffset.centerRight,child:  Icon(Icons.chevron_right,),),
                  ),
                ],
              ))),

Padding(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
              ),

              Container(
                decoration: new BoxDecoration(
                    color: _color,
                    border:  Border(
                    bottom: const BorderSide(
                    width: 1.0, color: Color(0xFFEFEFEF)),
                  ),),
                  child: new GestureDetector(
                onTap: () {
                  setState(() { });
                },
                onTapDown:(TapDownDetails details){
                  setState(() {_color=Colors.black;  });
                } ,
                 onTapUp:(TapUpDetails details){
                  setState(() {_color=Colors.white;  });
                } ,
                child:
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child:Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                      child:  Text('水泥品种'),),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text('请选择'),
                  ),
                  Expanded(
                    flex: 1,
                    child:Align(alignment: FractionalOffset.centerRight,child:  Icon(Icons.arrow_drop_down,),),
                  ),
                ],
              ))),

Padding(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
              ),

            Container(
                decoration: new BoxDecoration(
                    color: _color,
                    border:  Border(
                    bottom: const BorderSide(
                    width: 1.0, color: Color(0xFFEFEFEF)),
                  ),),
                  child: new GestureDetector(
                onTap: () {
                  setState(() { });
                },
                onTapDown:(TapDownDetails details){
                  setState(() {_color=Colors.black;  });
                } ,
                 onTapUp:(TapUpDetails details){
                  setState(() {_color=Colors.white;  });
                } ,
                child:
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child:Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                      child:  Text('数量'),),
                  ),
                  Expanded(
                    flex: 2,
                    child: TextField(),
                  ),
                ],
              ))),

Padding(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
              ),

            Container(
                decoration: new BoxDecoration(
                    color: _color,
                    border:  Border(
                    bottom: const BorderSide(
                    width: 1.0, color: Color(0xFFEFEFEF)),
                  ),),
                  child: new GestureDetector(
                onTap: () {
                  setState(() { });
                },
                onTapDown:(TapDownDetails details){
                  setState(() {_color=Colors.black;  });
                } ,
                 onTapUp:(TapUpDetails details){
                  setState(() {_color=Colors.white;  });
                } ,
                child:
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child:Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                      child:  Text('发货企业'),),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text('请选择'),
                  ),
                  Expanded(
                    flex: 1,
                    child:Align(alignment: FractionalOffset.centerRight,child:  Icon(Icons.arrow_drop_down,),),
                  ),
                ],
              ))),

Padding(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
              ),

              Container(
                decoration: new BoxDecoration(
                    color: _color,
                    border:  Border(
                    bottom: const BorderSide(
                    width: 1.0, color: Color(0xFFEFEFEF)),
                  ),),
                  child: new GestureDetector(
                onTap: () {
                  setState(() { });
                },
                onTapDown:(TapDownDetails details){
                  setState(() {_color=Colors.black;  });
                } ,
                 onTapUp:(TapUpDetails details){
                  setState(() {_color=Colors.white;  });
                } ,
                child:
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child:Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                      child:  Text('客户组'),),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text('请选择'),
                  ),
                  Expanded(
                    flex: 1,
                    child:Align(alignment: FractionalOffset.centerRight,child:  Icon(Icons.arrow_drop_down,),),
                  ),
                ],
              ))),

Padding(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
              ),

            Container(
                decoration: new BoxDecoration(
                    color: _color,
                    border:  Border(
                    bottom: const BorderSide(
                    width: 1.0, color: Color(0xFFEFEFEF)),
                  ),),
                  child: new GestureDetector(
                onTap: () {
                  setState(() { });
                },
                onTapDown:(TapDownDetails details){
                  setState(() {_color=Colors.black;  });
                } ,
                 onTapUp:(TapUpDetails details){
                  setState(() {_color=Colors.white;  });
                } ,
                child:
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child:Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                      child:  Text('销往地区'),),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text('请选择'),
                  ),
                  Expanded(
                    flex: 1,
                    child:Align(alignment: FractionalOffset.centerRight,child:  Icon(Icons.arrow_drop_down,),),
                  ),
                ],
              ))),

Padding(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
              ),

            Container(
                decoration: new BoxDecoration(
                    color: _color,
                    border:  Border(
                    bottom: const BorderSide(
                    width: 1.0, color: Color(0xFFEFEFEF)),
                  ),),
                  child: new GestureDetector(
                onTap: () {
                  setState(() { });
                },
                onTapDown:(TapDownDetails details){
                  setState(() {_color=Colors.black;  });
                } ,
                 onTapUp:(TapUpDetails details){
                  setState(() {_color=Colors.white;  });
                } ,
                child:
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child:Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                      child:  Text('贷款价格'),),
                  ),
                  Expanded(
                    flex: 2,
                    child: TextField(),
                  ),
                ],
              ))),

Padding(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
              ),

            Container(
                decoration: new BoxDecoration(
                    color: _color,
                    border:  Border(
                    bottom: const BorderSide(
                    width: 1.0, color: Color(0xFFEFEFEF)),
                  ),),
                  child: new GestureDetector(
                onTap: () {
                  setState(() { });
                },
                onTapDown:(TapDownDetails details){
                  setState(() {_color=Colors.black;  });
                } ,
                 onTapUp:(TapUpDetails details){
                  setState(() {_color=Colors.white;  });
                } ,
                child:
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child:Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                      child:  Text('运费价格'),),
                  ),
                  Expanded(
                    flex: 2,
                    child: TextField(),
                  ),
                ],
              ))),

Padding(
              padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
              ),

            Container(
                decoration: new BoxDecoration(
                    color: _color,
                    border:  Border(
                    bottom: const BorderSide(
                    width: 1.0, color: Color(0xFFEFEFEF)),
                  ),),
                  child: new GestureDetector(
                onTap: () {
                  setState(() { });
                },
                onTapDown:(TapDownDetails details){
                  setState(() {_color=Colors.black;  });
                } ,
                 onTapUp:(TapUpDetails details){
                  setState(() {_color=Colors.white;  });
                } ,
                child:
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child:Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                      child:  Text('删除子项目', style: TextStyle(color: Colors.red,fontSize: 18),),),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Container(height: 40.0,),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                ],
              ))),

            ],
          ),
        )
        )
        
    );
    // Container(
    //       alignment: Alignment.center,
    //       child: Column(
    //       children:<Widget>[
    //         Padding(
    //           padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
    //         ),
    //         Align(
    //           child:  RaisedButton(
    //             padding:  EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
    //             //padding
    //             child:  Text(
    //               '请选择客户',
    //               style:  TextStyle(
    //                 fontSize: 18.0, //textsize
    //                 color: Colors.white, // textcolor
    //               ),
    //             ),
    //             color: Theme.of(context).accentColor,
    //             elevation: 4.0,
    //             //shadow
    //             splashColor: Colors.blueGrey,
    //             onPressed: () {
    //               showAlertDialog(context);
    //           }), 
    //         ),
    //         Row(
    //           children: <Widget>[
    //             Expanded(
    //               flex: 3,
    //               child: new Container(
    //               child:
    //                 Container())),
    //             Expanded(
    //               flex: 1,
    //               child: new Container(
    //               alignment: Alignment.center,
    //               child:
    //                 Radio(
    //                   value: 1,
    //                   groupValue: groupValue,//当value和groupValue一致的时候则选中
    //                   onChanged: (T){
    //                     onChange(T);
    //                   }
    //                 ))),
    //             Expanded(
    //               flex: 2,
    //               child: new Container(
    //               child:
    //                 Text('合同'),)),
    //             Expanded(
    //               flex: 1,
    //               child: new Container(
    //               alignment: Alignment.center,
    //               child:
    //                 Radio(
    //                   value: 2,
    //                   groupValue: groupValue,
    //                   onChanged: (T){
    //                     onChange(T);
    //                   }
    //                 ),
    //             )),
    //             Expanded(
    //               flex: 2,
    //               child: new Container(
    //               child:Text('补充协议'),
    //             )),
    //             Expanded(
    //               flex: 3,
    //               child: new Container(
    //               child:
    //                 Container())),
    //         ],
    //       ),
    //       TextField(
    //         textAlign: TextAlign.center,
    //         onChanged: null,
    //         autofocus: false,
    //     )
    //   ]),
    // )
  }

  

  Future<bool> back() {
     Navigator.pop(context);
     return Future<bool>.value(false);
  }

   void showAlertDialog(BuildContext context) {
    showDialog<Null>(
      context: context,
      builder: (BuildContext context) {
        return  SimpleDialog(
          title:  Text('选择'),
          children: <Widget>[
             SimpleDialogOption(
              child:  Text('选项 1'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
             SimpleDialogOption(
              child:  Text('选项 2'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}