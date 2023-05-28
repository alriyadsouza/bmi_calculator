import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusableCardProp.dart';
import 'reusableCard.dart';
import 'constants.dart';

enum Gender{female,male}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  late Gender selectGender;
  int height=180;

    // Color malecardColor =inactivecardcolor;
    // Color femalecardColor=inactivecardcolor;
    //
    // //male=1, female=2
    // void updatecolor(Gender selectedGender)
    // {
    //   if(selectedGender== Gender.male)
    //     {
    //       if (malecardColor== inactivecardcolor){
    //         malecardColor= cardColor;
    //         femalecardColor== inactivecardcolor;
    //         }else{
    //         malecardColor== inactivecardcolor;
    //       }
    //     }else{
    //     if (femalecardColor== inactivecardcolor){
    //       femalecardColor= cardColor;
    //       malecardColor== inactivecardcolor;
    //     }else{
    //       femalecardColor== inactivecardcolor;
    //     }
    //   }
    // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(children: [
              Expanded(
                child: reusableCard(
                  onPress:(){
                    setState(() {
                      selectGender=Gender.male;
                    });
                  },
                  colour: selectGender==Gender.male? kcardColor: kinactivecardcolor,
                  cardChild: reusableCardProp(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: reusableCard(
                  onPress: (){
                    setState(() {
                      selectGender=Gender.female;
                    });
                  },
                  colour: selectGender==Gender.female? kcardColor: kinactivecardcolor,
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
              colour: kcardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                    'HEIGHT',
                  style: klabelTextStyles,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: kNumberTextStyles,
                    ),
                    const Text(
                      'cm',
                      style: klabelTextStyles,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Color(0xFF8D8E98),
                    thumbColor: Color(0xFFEB1555),
                    overlayColor: Color(0x29EB1555),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min:120.0,
                    max:220.0,
                    onChanged: (double newValue){
                      setState(() {
                        height=newValue.round();
                      });
                    },
                   ),
                ),
              ],
              ),
            ),
          ),
          // Expanded(
          //   child: Row(children: [
          //     Expanded(
          //       child: reusableCard(
          //         colour: kcardColor, cardChild: null, onPress: null,
          //       ),
          //     ),
          //     Expanded(
          //       child: reusableCard(
          //         colour: kcardColor, cardChild: null, onPress: null,
          //       ),
          //     ),
          //   ]),
          // ),
          Container(
            color: kbottomcardColor,
            margin: EdgeInsets.only(top:10.0),
            width: double.infinity,
            height: kbottomBar,
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

