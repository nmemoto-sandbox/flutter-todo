import 'package:flutter/material.dart';
import './todo_list_tile.dart';
import '../models/todo_model.dart';

class TodoList extends StatefulWidget {

  @override
  TodoListState createState() => new TodoListState();
}

class TodoListState extends State<TodoList> {

  List<TodoModel> todos = <TodoModel>[
    TodoModel(id: 1, name: 'test1', done: false),
    TodoModel(id: 2, name: 'test2', done: false),
    TodoModel(id: 3, name: 'test3', done: false),
  ];

  void changeDone(TodoModel todo) {
    TodoModel newTodo = TodoModel.copy(todo);
    print(newTodo.id);
    newTodo.done = !todo.done;
    setState(() {
      todos.removeWhere((t) => t.id == todo.id);
      todos.add(newTodo);
    });
  }


  Widget build(context) {
    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, int index) {
          return TodoListTile(
            todo: todos[index],
            changeDone: changeDone
          );
        });
  }
}