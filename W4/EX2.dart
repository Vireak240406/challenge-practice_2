import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Container(
        color: Colors.blue,
        margin: EdgeInsets.all(40.0),
        padding: EdgeInsets.all(40.0),

        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: Colors.black, width: 2),
          ),
          
          child: Center(
            child: Text(
              'CADT STUDENT',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ),
    ),
  );
}

