import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.white),
        body: Column(
          children: [
            Container(
              height: 400,
              color: Colors.blue,
            ),

            Row(
              children: [
                Expanded(child: Container(height: 100, color: Colors.green)),
                Container(height: 100, width: 100, color: Colors.pink),
              ],
            ),
            Row(
              children: [
                Expanded(child: Container(height: 100, color: Colors.yellow)),
                SizedBox(height: 20, width: 20),
                Expanded(child: Container(height: 100, color: Colors.yellow)),
                SizedBox(height: 20, width: 20),
                Expanded(child: Container(height: 100, color: Colors.yellow)),
              ],
            ),
            Row(
              children: [
                Expanded(child: Container(height: 20, color: Colors.white)),
              ],
            ),
            Expanded(child: Container(color: Colors.pink)),
          ],
        ),
      ),
    ),
  );
}