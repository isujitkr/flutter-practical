import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container Widget'),
        ),
        body: Container(
          width: 90,
          height: 20,
          child: const Text('Hello World', style: TextStyle(color: Colors.green),),
        ),
      ),
    );
  }
}