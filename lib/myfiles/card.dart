import 'dart:math';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mca 3rd - Card Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('MCA 3rd sem'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Center(
          child: Column(children: [
            Card(
              elevation: 8.0,
              color: Colors.white,
              margin: EdgeInsets.all(16.0),
              shape: UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange,width: 5)),
            ),
            Card(
              elevation: 8.0,
              color: Colors.white,
              margin: EdgeInsets.all(16.0),
              shape: StadiumBorder(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Sujit 51',
                        textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 48.0,
                      color: Colors.orange,
                    ),
                  ),
                  Text(
                    '2022-24 Batch',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'BCIIT',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.pink),
                  ),
                ],
              ),
            )
          ],)
        ),
      ),
    );
  }
}