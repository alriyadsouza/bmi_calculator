import 'package:flutter/material.dart';

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
                child: reusableCard(colour: Color(0xFF1D1E33),),
              ),
              Expanded(
                child: reusableCard(colour: Color(0xFF1D1E33),),
              ),
            ]),
          ),
           Expanded(
            child: reusableCard(colour: Color(0xFF1D1E33),),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                child: reusableCard(colour: Color(0xFF1D1E33),),
              ),
              Expanded(
                child: reusableCard(colour: Color(0xFF1D1E33),),
              ),
            ]),
          ),
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

class reusableCard extends StatelessWidget {

  reusableCard({required this.colour});

  Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
