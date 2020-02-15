import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  @override
  _SlideState createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  RangeValues _values = RangeValues(0.15, 0.5);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child : RangeSlider(
        values: _values,
        onChanged: (RangeValues values) {
          setState(() {

            _values = values;
          });
        },
        activeColor:  Color.fromRGBO(52, 46, 93, 1),
      )
    );
  }
}
