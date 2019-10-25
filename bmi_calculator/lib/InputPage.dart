import 'package:flutter/material.dart';
import 'first_part.dart';
import 'second_part.dart';
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}


class _InputPageState extends State<InputPage> {
  bool male =false;
  bool female =false;
  Color maleColor = Colors.yellow;
  Color femaleColor = Colors.yellow;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: Text('BMI CAL'),),
      body: Column(
        children: <Widget>[
          firstPart(),
          secondPart(),
          Expanded(
            child: Container(
              color: Colors.green,
              margin: EdgeInsets.all(10),
            ),
          ),
        ],
      ),
    );
  }
}
