import 'package:flutter/material.dart';
import 'package:sonk/commons/styleButton.dart';

class SelectButton extends StatefulWidget {
  final String name;
  SelectButton(this.name);
  @override
  _SelectButtonState createState() => _SelectButtonState();
}

class _SelectButtonState extends State<SelectButton> {

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15.0)),
      onPressed: null,
      child: Text(widget.name,style: TextStyle(color: Color.fromRGBO(52, 46, 93, 1)),),
    );
  }
}
