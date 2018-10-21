import 'package:flutter/material.dart';
import './screens/main_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Todo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(title: 'Flutter Todo Page'),
    );
  }
}