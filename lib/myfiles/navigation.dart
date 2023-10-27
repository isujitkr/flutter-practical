import 'package:flutter/material.dart';
import 'navFirstScreen.dart';
import 'navSecondScreen.dart';
import 'navThirdScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NAMED ROUTE',
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),
        '/first': (context) => const FirstScreen(),
        '/third': (context) => const ThirdScreen(),
      },
    ),
  );
}