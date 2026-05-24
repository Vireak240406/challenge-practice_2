import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  'OOP',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.blue[300],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  'DART',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),


            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  'FLUTTER',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
          ],
          
        ),
      ),
    ),
  );
}

