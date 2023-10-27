import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: 'Animation Demo',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              AnimCntnrWdt(),
            ],
          ),
        ),
      ),
    )
  );
}

class AnimCntnrWdt extends StatefulWidget{
  @override
  _AnimCntnrWdtState createState() => _AnimCntnrWdtState();
}

class _AnimCntnrWdtState extends State<AnimCntnrWdt>{
  double _height = 100.0;
  double _width = 100.0;
  void _increaseWidth(){
    setState(() {
      _width = _width >= 320.0 ? 100.0 :_width +=50.0;
      _height = _height >= 400.0 ? 100 : _height +=75.0;
    } );
  }
  @override
  Widget build(BuildContext context){
    return Row(
      children: <Widget>[
        AnimatedContainer(
          duration: Duration(microseconds: 500),
          curve: Curves.elasticOut,
          color: Colors.amber,
          height: _height,
          width: _width,
          child: ElevatedButton(
            child: Text('Tap to \n Grow width\n$_width'),
            onPressed: (){
              _increaseWidth();
            } ,
          ),
        )
      ],
    );
  }
}