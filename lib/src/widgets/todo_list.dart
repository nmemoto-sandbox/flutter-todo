import 'package:flutter/material.dart';
import './todo_list_tile.dart';
import '../models/todo_model.dart';

class TodoList extends StatelessWidget {

  TodoList({this.todos});

  final List<TodoModel> todos;

  Widget build(context) {
    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, int index) {
          return TodoListTile(
            todo: todos[index]
          );
        });
  }
}