import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scaffold Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scaffold'),
        ),
        body: Center(
          child: Text('Hello Scaffold Widget'),
        ),
      ),
    );
  }
}