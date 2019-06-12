import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

class BillSearch extends StatefulWidget {
  BillSearch({Key key}) : super(key: key);

  _BillSearchState createState() => _BillSearchState();
}

class _BillSearchState extends State<BillSearch> {
 DateTime _dateTime = DateTime.now(); // 要做个初始化，不然后面不能传入null

 
// Future<DateTime> showDatePicker ({
//     @required BuildContext context, // 上下文
//     @required DateTime initialDate, // 初始日期
//     @required DateTime firstDate,   // 日期范围，开始
//     @required DateTime lastDate,    // 日期范围，结尾
//     SelectableDayPredicate selectableDayPredicate,
//     DatePickerMode initialDatePickerMode: DatePickerMode.day,
//     Locale locale,                  // 国际化
//     TextDirection textDirection,
// });

 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: new MaterialButton(
    child: new Text('选择日期'),
    onPressed: () {
    
        // 调用函数打开
        showDatePicker(
            context: context,
            
            initialDate: new DateTime.now(),
            firstDate: new DateTime.now().subtract(new Duration(days: 30)), // 减 30 天
            lastDate: new DateTime.now().add(new Duration(days: 30)),       // 加 30 天
   
        ).then((DateTime val) {
            print(val);   // 2018-07-12 00:00:00.000
        }).catchError((err) {
            print(err);
        });
    }
    
),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('BottomNavigationBar Sample'),
    //   ),
    //   body: Center(
    //     child: new ListView(
    //       children: <Widget>[
    //         new FlatButton(
    //           onPressed: _showDatePicker,
    //           child: new Text('date picker'),
    //         ),
    //         new Padding(
    //           padding: new EdgeInsets.all(10.0),
    //           child: new Text(_dateTime.toString()),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
 
  void _showDatePicker() {
    _selectDate(context);
  }
 
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime _picked = await showDatePicker(
      context: context,
      initialDate: _dateTime, // 不能传入null
      firstDate: new DateTime(2017),
      lastDate: new DateTime(2021),
    );
 
    if (_picked != null) {
      print(_picked);
      setState(() {
        _dateTime = _picked;
      });
    }
  }
}