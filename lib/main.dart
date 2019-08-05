import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(title: 'zzx flutter', home: new FirstScreen());
  }
}

class FirstScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('文本导航页面'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('查看商品详情页'),
          onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder:(context)=> SecondScreen()
              )
              );
          },
        ),
      ),
    );
  }
}


class SecondScreen extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情页'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('返回'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
