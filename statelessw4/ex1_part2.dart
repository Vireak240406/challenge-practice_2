import 'package:flutter/material.dart';

class MyHobbyCard extends StatelessWidget {
  const MyHobbyCard({
    super.key,
    required this.title,
    required this.icon,
    required this.backgroundColor,
  });
  final String title;
  final IconData icon;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.all(20),
      // color: backgroundColor,
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Row(
          children: [
            Icon(icon),
            Center(child: Text(title)),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "My Hobbies",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MyHobbyCard(
                title: 'Travelling',
                icon: Icons.travel_explore,
                backgroundColor: Colors.green,
              ),
              MyHobbyCard(
                title: 'Skating',
                icon: Icons.skateboarding,
                backgroundColor: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
