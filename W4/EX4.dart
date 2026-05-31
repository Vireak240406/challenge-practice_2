import 'package:flutter/material.dart';

// Start from the exercice 3 code
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(color: Colors.orange),
              child: Center(
                child: Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Container(
              width: double.infinity,
              margin: EdgeInsets.all(25.0),
              padding: EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'My Habbit',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Row(
              children: [
                Container(
                  width: 150,
                  height: 200,
                  margin: EdgeInsets.all(100),
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Football',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                Container(
                  width: 150,
                  height: 200,
                  margin: EdgeInsets.all(100),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 151, 111, 99),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Flutter',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Container(
              width: double.infinity,
              margin: EdgeInsets.all(50),
              padding: EdgeInsets.all(50),
              decoration: BoxDecoration(color: Colors.orange),
            ),
          ],
        ),
      ),
    ),
  );
}