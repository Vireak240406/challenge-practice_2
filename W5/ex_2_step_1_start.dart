import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Favorite cards"),
      ),
      body: Column(
        children: [
          Container(
            // YOUR CODE
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 0.5, color: Colors.grey),
              ),
            ),
            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Card1',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'description',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite, color: Colors.red),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ),
);
