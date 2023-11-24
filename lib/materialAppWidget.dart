import 'package:flutter/material.dart';

void main() {
  runApp(GFGapp());
}

class GFGapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Geeksfeeks',
      home: Scaffold(
        appBar: AppBar(title: const Text('GeekforGeeks')),
      ),
    );
  }
}
