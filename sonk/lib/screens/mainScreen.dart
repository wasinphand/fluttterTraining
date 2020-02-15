import 'package:flutter/material.dart';
import 'package:sonk/commons/styleButton.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key key,this.detail}) : super(key: key);
  final Detail detail;
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController _textController;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: LayoutBuilder(
              builder: (context,constraints)=>
                  Stack(
                    fit: StackFit.expand,
                    children: <Widget>[

                      Positioned(
                          top: constraints.maxHeight - 80,
                          left: constraints.maxWidth - 80,
                          child: GestureDetector(
                            onTap: (){},
                            child: ClipOval(
                              child: Container(
                                color: Color.fromRGBO(52, 46, 93, 1),
                                height: 60,
                                width: 60,
                                child: Center(child: Icon(Icons.account_box, size: 35,color: Colors.white,)),
                              ),
                            ),
                          )
//Icon(Icons.search, size: 40,color: Colors.white,),
                      ),
                      Positioned(
                          top: constraints.maxHeight - 150,
                          left: constraints.maxWidth - 80,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, 'search_filter');
                            },
                            child: ClipOval(
                              child: Container(
                                color: Color.fromRGBO(52, 46, 93, 1),
                                height: 60,
                                width: 60,
                                child: Center(child: Icon(Icons.search, size: 40,color: Colors.white,),),
                              ),
                            ),
                          )
                      ),
                    ],
                  )
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(52, 46, 93, 1),
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: allIcons.map((Detail detail) {
          return BottomNavigationBarItem(
            icon: Icon(detail.icon),
            title: Text(detail.title),
            backgroundColor: Color.fromRGBO(52, 46, 93, 1),
          );
        }).toList(),
      ),
    );
  }
  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}

class Detail{
  const Detail(this.title,this.icon);
  final String title;
  final IconData icon;
}


const List<Detail> allIcons = <Detail>[
  Detail("Profile",Icons.account_box),
  Detail("Chat",Icons.chat), //not sure
  Detail("Add Event",Icons.add_box),
  Detail("Chat",Icons.chat_bubble_outline),
  Detail("Notification",Icons.notifications_none)
];

