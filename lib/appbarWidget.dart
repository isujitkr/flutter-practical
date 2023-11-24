import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Action to be performed when the search icon is pressed.
              print('Search Icon Pressed!');
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Action to be performed when the settings icon is pressed.
              print('Settings Icon Pressed!');
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Welcome to My AppBar Example!',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: 'App bar ex',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('My App'),
//           actions: [
//             IconButton(
//               icon: Icon(Icons.search),
//               onPressed: () {
//                 // Action to be performed when the search icon is pressed.
//                 print('Search Icon Pressed!');
//               },
//             ),
//             IconButton(
//               icon: Icon(Icons.settings),
//               onPressed: () {
//                 // Action to be performed when the settings icon is pressed.
//                 print('Settings Icon Pressed!');
//               },
//             ),
//           ],
//         ),
//         body: Center(
//           child: Text(
//             'Welcome to My AppBar Example!',
//             style: TextStyle(fontSize: 20.0),
//           ),
//         ),
//       ),
//     );
//   }
// }
