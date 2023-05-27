import 'input_page.dart';
import 'package:flutter/material.dart';
import 'reusableCard.dart';

const labelTextStyles= TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

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
          style:labelTextStyles,
        ),
      ],
    );
  }
}