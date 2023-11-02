import 'package:flutter/material.dart';

main()=>runApp(MaterialApp(
  home: ExGesturesApps()
));

class ExGesturesApps extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {_showDialog(context);
            print('Tapped on TextField');
          },
        )
      ),
    );
  }
}

void _showDialog (BuildContext context){
  showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: new Text("Message"),
          content: new Text ("Hello World"),
          actions: <Widget> [
            new ElevatedButton(
                child: new Text("Close"),
                onPressed: (){
                  Navigator.of(context).pop();
                },
            ),
          ],
        );
      },
  );
}