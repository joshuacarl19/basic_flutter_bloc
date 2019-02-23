import 'package:flutter/material.dart';
import 'screens/instansi_screens.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: InstansiScreen()
      ),
    );
  }
}