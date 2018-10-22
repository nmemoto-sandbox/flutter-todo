import 'package:flutter/material.dart';
import '../models/todo_model.dart';

class TodoListTile extends StatelessWidget {

  TodoListTile({this.todo});

  final TodoModel todo;

  Widget build(context) {
    return ListTile(
        title: Text('${todo.name}')
    );
  }
}