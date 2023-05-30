import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {

  RoundIconButton({required IconData icon, required this.child, required this.onPressed});
  final Widget child;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: child,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onPressed as void Function()?,
      elevation: 6.0,
    );
  }
}