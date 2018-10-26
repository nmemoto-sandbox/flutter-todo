import 'package:flutter/material.dart';

class TodoInput extends StatelessWidget {

  Widget build(context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextFormField(
                style: new TextStyle(
                    fontSize: 25.0,
                    height: 1.0,
                    color: Colors.black
                )
            )
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Colors.blue,
            onPressed: () {

            },
          )
        ],
      ),
    );
  }
}