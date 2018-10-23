import 'package:flutter/material.dart';
import '../widgets/todo_list.dart';

class MainPage extends StatelessWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: TodoList()
    );
  }
}
