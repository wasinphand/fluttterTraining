import 'package:flutter/material.dart';

class StyleButton extends StatelessWidget{
  final String name;
  final String url;
  StyleButton(this.name,this.url);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      child: FlatButton(

        child: Row(
          children: <Widget>[
            Image(image: NetworkImage(this.url),height: 35,),
            SizedBox(width: 20,),
            Text('Continue with '+this.name,style: TextStyle(color:Colors.deepPurple,fontSize: 25,fontWeight: FontWeight.bold),),
          ],
        ),
        onPressed: (){
          if(this.name=="Facebook")
            Navigator.pushNamed(context, 'main_screen');
        },
        color : Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(25)
        ),


      ),
      margin: EdgeInsets.symmetric(horizontal: 20),
    );
  }
}