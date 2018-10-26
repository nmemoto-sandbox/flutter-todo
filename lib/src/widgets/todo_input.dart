import 'package:flutter/material.dart';

class TodoInput extends StatelessWidget {

  final todoInputController = TextEditingController();

  TodoInput({Key key, this.addTodo}): super(key: key);
  ValueChanged<String> addTodo;


  Widget build(context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextFormField(
              style: TextStyle(
                  fontSize: 25.0,
                  height: 1.0,
                  color: Colors.black
              ),
              controller: todoInputController
            )
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Colors.blue,
            onPressed: () {
              addTodo(todoInputController.text);
            },
          )
        ],
      ),
    );
  }
}