import 'package:flutter/material.dart';

class secondPart extends StatefulWidget {
  @override
  _secondPartState createState() => _secondPartState();
}

class _secondPartState extends State<secondPart> {
  int hei = 120;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Expanded(
        child: Container(
          color: Colors.red,
          margin: EdgeInsets.all(10),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Height', style: TextStyle(fontSize: 35 , fontFamily: 'Raleway'),),
              Text(hei.toString()),
             Slider(
               value: hei.toDouble(),
               onChanged: (double newVal){
                 setState(() {
                   hei = newVal.round();
                 });
               },
               min: 120,
               max:  200,
               activeColor: Colors.green,
               inactiveColor: Colors.white,
             )
            ],
          ),
        ),
      ),
    );
  }
}
