import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    required this.gender,
    required this.icon,
  });
  final String gender;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: TextStyle(fontSize: 18, color: Color(0xFF808E98)),
        )
      ],
    );
  }
}