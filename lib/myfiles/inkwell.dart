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
        child: InkWell(
          onTap: () {
            // Handle tap event
            print('InkWell tapped!');
          },
          child: const SizedBox(
            width: 100.0,
            height: 100.0,
            child: Center(child: Text('Tap Me'),),

          ),
        ),
      ),
    );
  }
}
