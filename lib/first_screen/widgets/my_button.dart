import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  MyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0), // Set the corner radius
      ),
      height: 61,
      minWidth: 365,
      onPressed: onPressed,
      color: HexColor("#3556AB"),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
