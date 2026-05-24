import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyScaffold()
  ));
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      body: Center(
        child: Text(
          'Hello my name is Vireak!',
          style: TextStyle(color: Colors.orange, fontSize: 50),
        ),
      ),
    );
  }
}
