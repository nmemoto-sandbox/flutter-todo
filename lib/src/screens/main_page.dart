import 'package:flutter/material.dart';
import '../widgets/todo_list.dart';
import '../models/todo_model.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainPageState createState() => new _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<TodoModel> _todos = <TodoModel>[
    TodoModel(1,'test1',false),
    TodoModel(2,'test2',false),
    TodoModel(3,'test3',false),
  ];

  void addTodo(TodoModel todo) {
    setState(() {
      _todos.add(todo);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: TodoList(
        todos: _todos
      )
    );
  }
}
