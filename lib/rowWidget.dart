import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Row Widget',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Row widget Example'),
      ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(12.0),
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(8),
                    color:Colors.green
                ),
                child: Text('React', style: TextStyle(color: Colors.yellow, fontSize: 20.0),),
              ),

              Container(
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(12.0),
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(8),
                    color:Colors.green
                ),
                child: Text('Next Js', style: TextStyle(color: Colors.yellow, fontSize: 20.0),),
              ),

              Container(
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(12.0),
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(8),
                    color:Colors.green
                ),
                child: Text('DBMS', style: TextStyle(color: Colors.yellow, fontSize: 20.0),),
              ),

            ],
          ),
        )
    );
  }
}