import 'package:flutter/material.dart';

enum ButtonType { primary, secondary, disabled }

enum IconPosition { left, right }

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
    this.buttonType = ButtonType.primary,
    this.iconPosition = IconPosition.left,
  });
  final String label;
  final IconData icon;
  final ButtonType buttonType;
  final IconPosition iconPosition;

  Color getButtonColor() {
    switch (buttonType) {
      case ButtonType.primary:
        return Colors.blue;
      case ButtonType.secondary:
        return Colors.green;
      case ButtonType.disabled:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: getButtonColor(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: iconPosition == IconPosition.left
            ? [
                Icon(icon, color: Colors.white),
                Text(
                  label,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ]
            : [
                Text(
                  label,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Icon(icon, color: Colors.white),
              ],
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
            "Custom Button",
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              CustomButton(
                label: 'Submit',
                icon: Icons.check,
                buttonType: ButtonType.primary,
              ),
              CustomButton(
                label: 'Time',
                icon: Icons.access_time,
                buttonType: ButtonType.secondary,
                iconPosition: IconPosition.right,
              ),
              CustomButton(
                label: 'Account',
                icon: Icons.account_tree,
                iconPosition: IconPosition.right,
                buttonType: ButtonType.disabled,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
