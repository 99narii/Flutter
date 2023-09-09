import 'package:flutter/material.dart';

class BottomIconBtn extends StatelessWidget {
  final IconData icon;
  final String  text;

  const BottomIconBtn({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 25,
        ),
        SizedBox(height: 10,),
        Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ],
    );
  }
}
