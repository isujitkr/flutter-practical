import 'package:flutter/material.dart';

void main(){
  runApp(const StackApp());
}
class StackApp extends StatelessWidget{
  const StackApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: StackWidget(),
    );
  }
}

class StackWidget extends StatelessWidget{
  const StackWidget({
    Key ? key,
}): super(key: key);

  @override
  Widget build(BuildContext context){
    return Stack(
      children: <Widget>[
        Image(
          image: AssetImage('app_img_src/f0.png'),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        Positioned(
          bottom: 10.0,
          left: (MediaQuery.of(context).size.width/2-20),
          child: CircleAvatar(
            radius: 20.0,
            backgroundImage: AssetImage('app_img_src/fo.png',),
          ),
        ),
        Positioned(
            bottom: 90.0,
            right: 16.0,
            child: Text(
              'Sujit Kumar',
              style: TextStyle(
                fontSize: 53.0,
                color: Colors.green,
                fontWeight: FontWeight.bold,

              ),
            )
        )
      ],
    );
  }
}