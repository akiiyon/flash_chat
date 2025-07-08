import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.colour, required this.title, required this.onPressed});

  final Color? colour;
  final String title;
  final VoidCallback onPressed; //cant just declare it as Function

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour, //our variable color
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed, // our variable function
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(color: Colors.white), //our variable button text
          ),
        ),
      ),
    );
  }
}
