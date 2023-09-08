import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton(this.icon, this.onPress);

  final IconData icon;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => onPress!(),
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
