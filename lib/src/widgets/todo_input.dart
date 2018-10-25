import 'package:flutter/material.dart';

class TodoInput extends StatelessWidget {

  Widget build(context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextFormField()
          ),
          FlatButton(
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
            color: Colors.blue,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            onPressed: () {

            },
          )
        ],
      ),
    );
  }
}