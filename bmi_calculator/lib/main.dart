import 'package:flutter/material.dart';
import 'package:bmi_calculator/InputPage.dart';
void main() => runApp(BMICal());

class BMICal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : InputPage(),
      theme: ThemeData(
        brightness: Brightness.dark
      ),
    );
  }
}
