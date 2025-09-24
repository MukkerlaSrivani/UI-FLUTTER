import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Main widget of the app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

// Home screen widget
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Variables
  String greeting = 'Hello, Flutter!';
  int counter = 0;

  // Function to update the counter
  void _incrementCounter() {
    setState(() {
      counter++;
      greeting = 'Button pressed $counter times';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Flutter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Display greeting
            Text(
              greeting,
              style: TextStyle(fontSize: 24),
            ),
            // Button to increment counter
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Press me'),
            ),
          ],
        ),
      ),
    );
  }
}
