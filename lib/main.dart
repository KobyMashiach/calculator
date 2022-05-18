import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  Calculator({Key key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int sum = 0;
  @override
  Widget build(BuildContext context) {
    var calculator = Calculator;
    return Scaffold(
      appBar: AppBar(
        title: Text('Koby Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$sum'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              sum++;
            },
          );
        },
        child: Icon(Icons.ac_unit),
      ),
    );
  }
}
