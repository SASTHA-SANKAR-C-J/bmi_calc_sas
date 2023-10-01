import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({required this.icon, required this.ontapped});
  final IconData icon;
  final Function ontapped;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        ontapped();
      },
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      elevation: 0,
    );
  }
}