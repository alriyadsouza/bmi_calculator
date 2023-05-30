import '../screens/input_page.dart';
import 'package:flutter/material.dart';
import 'reusableCard.dart';
import '../constants.dart';

class reusableCardProp extends StatelessWidget {

  reusableCardProp({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size:80.0,
        ),
        const SizedBox(
          height:10.0,
        ),
        Text(
          label,
          style:klabelTextStyles,
        ),
      ],
    );
  }
}