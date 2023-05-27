import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusableCardProp.dart';
import 'reusableCard.dart';

const bottomBar=68.0;
const cardColor=Color(0xFF1D1E33);
const bottomcardColor=Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(children: [
              Expanded(
                child: reusableCard(
                  colour: cardColor,
                  cardChild: reusableCardProp(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: reusableCard(
                  colour: cardColor,
                  cardChild: reusableCardProp(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ),
            ]),
          ),
           Expanded(
            child: reusableCard(
              colour: cardColor,
              cardChild: reusableCardProp(
                icon: FontAwesomeIcons.mars,
                label: 'MALE',
              ),
            ),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                child: reusableCard(
                  colour: cardColor,
                  cardChild: reusableCardProp(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: reusableCard(
                  colour: cardColor,
                  cardChild: reusableCardProp(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ),
            ]),
          ),
          Container(
            color: bottomcardColor,
            margin: EdgeInsets.only(top:10.0),
            width: double.infinity,
            height: bottomBar,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          null;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

