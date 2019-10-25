import 'package:flutter/material.dart';
class firstPart extends StatefulWidget {
  @override
  _firstPartState createState() => _firstPartState();
}

class _firstPartState extends State<firstPart> {
  bool male =false;
  bool female =false;
  Color maleColor = Colors.yellow;
  Color femaleColor = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                  color: maleColor,
                  margin: EdgeInsets.all(10),
                  child:
                  FlatButton(
                    onPressed: (){
                      setState(() {
                        male = true;
                        female = false;

                        maleColor = Colors.red;
                        femaleColor = Colors.yellow;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.check,
                          size: 120,
                        ),
                        Text('Male',
                          style: TextStyle(fontSize: 40),
                        )
                      ],
                    ),
                  )


              ),
            ),
            Expanded(
              child: Container(
                color: femaleColor,
                margin: EdgeInsets.all(10),

                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      male = false;
                      female = true;
                      maleColor = Colors.yellow;
                      femaleColor = Colors.red;
                    });


                    print(male);
                  },
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.close,
                        size: 120,
                      ),
                      Text('Female',
                        style: TextStyle(fontSize: 40),
                      )
                    ],
                  ),
                ),


              ),
            ),
          ],
        )
    );
  }
}


