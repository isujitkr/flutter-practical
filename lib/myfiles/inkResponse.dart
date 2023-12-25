import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InkWell Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InkWell Example'),
      ),
      body: Center(
        child: InkResponse(
          onTap: () {
            // Handle tap event
            print('InkResponse tapped!');
          },
          highlightShape: BoxShape.circle,
          splashColor: Colors.yellow,
          child: const SizedBox(
            width: 100,
            height: 100,
            //color: Colors.blue,
            child: Center(
              child: Text(
                'Tap Me',
                style: TextStyle(color: Colors.pink),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
