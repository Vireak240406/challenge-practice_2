import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "My Hobbies",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.all(20),
                child: Padding(
                  padding: EdgeInsets.all(50),
                  child: Row(
                    children: [
                      Icon(Icons.travel_explore, color: Colors.white),
                      Center(
                        child: Text(
                          "Travelling",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.all(20),
                child: Padding(
                  padding: EdgeInsets.all(50),
                  child: Row(
                    children: [
                      Icon(Icons.skateboarding, color: Colors.white),
                      Center(
                        child: Text(
                          "Skating",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
