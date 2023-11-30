import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Button Widget',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Example'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(30),
              color: Colors.green,
              child: FloatingActionButton(
                child: Text('Floating Button', style: TextStyle(fontSize: 10),),
                onPressed: (){
                  print('Floating Button Pressed');
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.yellow,
              child: TextButton(
                child: Text('Text Button'),
                onPressed: (){
                  print('Text Button Pressed');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}