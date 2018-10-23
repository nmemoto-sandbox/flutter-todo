import 'package:flutter/material.dart';
import '../models/todo_model.dart';

class TodoListTile extends StatelessWidget {

  TodoListTile({Key key, this.todo, this.changeDone}): super(key: key);
  TodoModel todo;
  ValueChanged<TodoModel> changeDone;

  void _onChanged(_) {
    changeDone(todo);
  }

  Widget build(context) {
    return Column(
      children: <Widget>[
        CheckboxListTile(
            value: todo.done,
            title: Text('${todo.name}'),
            onChanged: _onChanged
        ),
        Divider(
          height: 8.0,
        )
      ],
    );
  }
}