import 'package:flutter/material.dart';

class SelectableButton extends StatefulWidget {
  const SelectableButton({super.key});

  @override
  State<SelectableButton> createState() => _SelectButtonState();
}

class _SelectButtonState extends State<SelectableButton> {
  bool isSeclected = false;
  @override
  Widget build(BuildContext context) {
    String text;
    Color backgroundColor;
    Color textColor;
    if (isSeclected == true) {
      text = "Selected";
      backgroundColor = const Color.fromARGB(255, 1, 132, 239);
      textColor = Colors.black;
    } else {
      text = "NotSelected";
      backgroundColor = const Color.fromARGB(255, 112, 191, 255);
      textColor = Colors.black;
    }
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
        onPressed: () {
          setState(() {
            if (isSeclected == false) {
              isSeclected = true;
            } else {
              isSeclected = false;
            }
          });
        },
        child: Center(
          child: Text(text, style: TextStyle(color: textColor)),
        ),
        //Center(child: Text("Not Selected")),
      ),
    );
  }
}

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text(
          "Custom buttons",
          style: TextStyle(color: Colors.black, fontSize: 23),
        ),
      ),
      body: Center(child: SelectableButton()),
      // child: SizedBox(
      //   width: 400,
      //   height: 100,
      //   child: ElevatedButton(
      //     onPressed: () => {},
      //     child: const Center(child: Text("Not Selected")),
      //   ),
      // ),
    ),
  ),
);
