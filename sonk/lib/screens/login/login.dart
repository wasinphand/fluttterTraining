import 'package:flutter/material.dart';
import 'package:sonk/commons/styleButton.dart';

class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Color.fromRGBO(52, 46, 93, 1),
      body: Center(
          child:Container(
            child:Column(
              children: <Widget>[
                SizedBox(height: 200,),
                Text('SONK',style: TextStyle(fontSize: 80,color: Colors.white),),
                SizedBox(height: 100),
                StyleButton('Facebook','https://i.pinimg.com/originals/fe/c4/3e/fec43ea4c7e559750558d5a3f06a96b0.png'),
                SizedBox(height: 10,),
                Text('แม้ลงทะเบียนผ่าน Facebook เพื่อนคุณบนนั้นก็ไม่เห็น',style: TextStyle(color:Colors.white),),
                SizedBox(height: 30,),
                StyleButton('Instragram','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCU-W_6KqJsjb8rOhSaROKF8xPyaDaAnVm0PiQo9EKMy5yHm3OHg&s'),
                SizedBox(height: 40,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('By signing up , you agree with our',style: TextStyle(color: Colors.white),),
                      FlatButton(
                        padding: EdgeInsets.only(left:5),
                        child: Text('Terms & Conditions',style: TextStyle(color:Colors.white,decoration: TextDecoration.underline),),
                        onPressed: (){},
                      ),
                    ],
                  ),
                ),
              ],
            ),)
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
