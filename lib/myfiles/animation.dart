import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: 'Animation Demo',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              //AnimCntnrWdt(),
              Divider(thickness: 20,color: Colors.pinkAccent,indent: 15,endIndent: 15,),
              AnimCrossFadeWdt(),
              Divider(thickness: 20,color: Colors.amber,indent: 15,endIndent: 15,),
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

class AnimCrossFadeWdt extends StatefulWidget{
  @override
  _AnimCrossFadeWdtState createState() => _AnimCrossFadeWdtState();

}

class _AnimCrossFadeWdtState extends State<AnimCrossFadeWdt>{
  bool _crossFadeStateToggle = true;
  void _crossFade(){
    setState(() {
      _crossFadeStateToggle = _crossFadeStateToggle ? false : true;
    });
  }
  @override
  Widget build(BuildContext context){
    return Row( children: <Widget>[
      Stack(
        alignment: Alignment.center,
        children: <Widget>[
          AnimatedCrossFade(
            firstCurve: Curves.linear,
            secondCurve: Curves.easeOutSine,
            duration: Duration(milliseconds: 1500),
            crossFadeState: _crossFadeStateToggle ? CrossFadeState.showFirst :
            CrossFadeState.showSecond,
            firstChild: Container(
              color: Colors.amber,
              height: 100.0,
              width: 300.0,
            ),
            secondChild: Container(
              color: Colors.pink,height: 200.0, width: 300.0,
            ),
          ),
          Positioned.fill(
            child: ElevatedButton(
              child: Text('Tap to \nFade color and size', style: TextStyle(fontSize: 20,),),
              onPressed: (){
                _crossFade();
              },
            ),
          )
        ],
      )
    ],);
  }
}