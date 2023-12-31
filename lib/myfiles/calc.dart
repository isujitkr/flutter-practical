import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MiniCalc(),
    );
  }
}

class MiniCalc extends StatefulWidget {
  @override
  _MiniCalcState createState() => _MiniCalcState();
}

class _MiniCalcState extends State<MiniCalc> {
  int firstNum = 0;
  int secNum = 0;
  int resNum = 0;
  final fnController = TextEditingController();
  final snController = TextEditingController();
  final resController = TextEditingController();

  void _calcAdd() {
    setState(() {
      firstNum = int.parse(fnController.text);
      secNum = int.parse(snController.text);
      resNum = firstNum + secNum;
      resController.text = resNum.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("MiniCalc")),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: fnController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'First Number',
                hintText: "Enter an integer value",
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: snController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Second Number',
                hintText: "Enter an integer value",
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          ElevatedButton(
            onPressed: _calcAdd,
            child: const Text(
              'Add Numbers',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: resController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Result',
                hintText: "Displaying Result of Operation",
              ),
              enabled: false,
            ),
          ),
        ],
      ),
    );
  }
}