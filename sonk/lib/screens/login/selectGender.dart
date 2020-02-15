import 'package:flutter/material.dart';
import 'package:sonk/commons/selectButton.dart';
class selectGender extends StatefulWidget {
  @override
  _selectGenderState createState() => _selectGenderState();
}

class _selectGenderState extends State<selectGender> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(

        children: <Widget>[
          SizedBox(width: 50,),
          Container(
            margin: EdgeInsets.only(right: 40),
            child: SelectButton("ชาย")
          ),
          Container(
              margin: EdgeInsets.only(right: 40),
              child: SelectButton("หญิง")
          ),
        ],
      ),
    );
  }
}
