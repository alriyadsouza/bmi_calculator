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

  late Gender selectGender=Gender.male;
  int height=180;
  int weight=60;

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
              ), onPress: (){
                print("pressed");
                },
            ),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                child: reusableCard(
                  colour: kcardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      const Text(
                        'WEIGHT',
                        style: klabelTextStyles,
                      ),
                      Text(
                        weight.toString(),
                        style: kNumberTextStyles,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon:FontAwesomeIcons.minus,
                            child: const Text('-',
                              style: TextStyle(
                                fontSize: 50.0,
                              ),
                            ),
                            onPressed: (){
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          SizedBox(width: 10.0,),
                          RoundIconButton(
                            icon:FontAwesomeIcons.plus,
                            child: const Text('+',
                              style: TextStyle(
                                fontSize: 30.0,
                              ),
                            ),
                            onPressed: (){
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ), onPress: (){
                  print("pressed");
                },
                ),
              ),
              Expanded(
                child: reusableCard(
                  colour: kcardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      const Text(
                        'WEIGHT',
                        style: klabelTextStyles,
                      ),
                      Text(
                        weight.toString(),
                        style: kNumberTextStyles,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon:FontAwesomeIcons.minus,
                            child: const Text('-',
                              style: TextStyle(
                                fontSize: 50.0,
                              ),
                            ),
                            onPressed: (){
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          RoundIconButton(
                            icon:FontAwesomeIcons.plus,
                            child: const Text('+',
                              style: TextStyle(
                                fontSize: 30.0,
                              ),
                            ),
                            onPressed: (){
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ), onPress: (){
                  print("pressed");
                },
                ),
              ),
            ]),
          ),
          Container(
            color: kbottomcardColor,
            margin: EdgeInsets.only(top:10.0),
            width: double.infinity,
            height: kbottomBar,
          )
        ],
      ),
    );
  }
}

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


