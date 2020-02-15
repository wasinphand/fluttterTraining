import 'package:flutter/material.dart';
import 'package:sonk/screens/login/selectGender.dart';
import 'package:sonk/screens/login/slide.dart';
import 'package:sonk/commons/selectButton.dart';
class searchFilter extends StatefulWidget {
  @override
  _searchFilterState createState() => _searchFilterState();
}

class _searchFilterState extends State<searchFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        title: Container(
          margin: EdgeInsets.only(right: 60),
          child: new Text("ตัวกรองและตัวค้นหา",style: TextStyle(color: Color.fromRGBO(52, 46, 93, 1),fontSize: 25),textAlign: TextAlign.center,),
        ),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Color.fromRGBO(52, 46, 93, 1)),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10,width: 90,),
            Container(

              child: Text("เพศ",style: TextStyle(fontSize: 15),),
              margin: EdgeInsets.only(left: 35),
            ),
            SizedBox(height: 5,),
            selectGender(),
            SizedBox(height: 10,),
            Container(
              child : Text("ระยะทาง(km)",style: TextStyle(fontSize: 15),),
              margin: EdgeInsets.only(left: 35),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: <Widget>[
                  Text("1.5Km"),
                  SizedBox(width: 120,),
                  Text("15"),
                  SizedBox(width : 150),
                  Text("50"),
                ],
              ),
            ),
            Slide(),
            SizedBox(height: 15,),
            Container(
              child : Text("จำนวนการมองเห็นเพื่อน",style: TextStyle(fontSize: 15),),
              margin: EdgeInsets.only(left: 35),
            ),
            SizedBox(height: 15,),
            Slide(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: <Widget>[
                  Text("8"),
                  SizedBox(width: 140,),
                  Text("50"),
                  SizedBox(width : 140),
                  Text("100"),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              child : Text("อายุ",style: TextStyle(fontSize: 15),),
              margin: EdgeInsets.only(left: 35),
            ),
            SizedBox(height: 15,),
            Slide(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: <Widget>[
                  Text("18"),
                  SizedBox(width: 140,),
                  Text("45"),
                  SizedBox(width : 140),
                  Text("60"),
                ],
              ),
            ),
            Container(
              child : Text("กิจกรรม",style: TextStyle(fontSize: 15),),
              margin: EdgeInsets.only(left: 25),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SelectButton("กิน"),
                  SelectButton("กาแฟ"),
                  SelectButton("เที่ยว"),
                  SelectButton("ดูหนัง"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SelectButton("ช็อปปิ้ง"),
                  SelectButton("อีเว้นท์"),
                  SelectButton("เกมส์"),
                  SelectButton("อื่นๆ"),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              child : Text("ระยะเวลา",style: TextStyle(fontSize: 15),),
              margin: EdgeInsets.only(left: 25),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SelectButton("เดี๋ยวนี้"),
                  SelectButton("ใน 30 นาที"),
                  SelectButton("ใน 1 ชั่วโมง"),
                  SelectButton("ใน 2 ชั่วโมง"),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SelectButton("ใน 3 ชั่วโมง"),
                  SelectButton("ใน 4 ชั่วโมง"),
                  SelectButton("ใน 1 วัน"),
                  SelectButton("อื่นๆ"),
                ],
              ),
            ),
            SizedBox(height: 20),

            Center(

              child: ButtonTheme(
                height: 45,
                minWidth: 150,

                child: OutlineButton(
                  borderSide: BorderSide(color: Color.fromRGBO(52, 46, 93, 1),width: 2),
                  
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15.0)),
                  onPressed: null,

                  child: Text("ยืนยัน",style: TextStyle(fontSize: 20,color: Color.fromRGBO(52, 46, 93, 1)),),

                ),
              )
            )

          ],
        )
      ),
    );
  }
}
