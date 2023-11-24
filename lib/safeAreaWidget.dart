import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context ){
    return MaterialApp(
      title: 'Safe Area Widget example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Safe Area Example'),
      ),
      body: SafeArea(
        child: Center(
          child: Text('Content with SafeArea', style: TextStyle(fontSize: 20.0),),
        ),
      ),
    );
  }
}