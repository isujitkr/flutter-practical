import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    const appTittle = 'Form Styling Demo';
    return MaterialApp(
      title: appTittle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTittle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget{
  const MyCustomForm({super.key});
  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              maxLength: 12,
              decoration: InputDecoration(
                prefixText: "MCA 2",
                suffixText: '"Best wishes',
                border: OutlineInputBorder(),
                hintText: 'Enter a text of length 12'
              ),
            ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your user name',
            ),
          ),
        )
      ],
    );
  }
}