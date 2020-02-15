import 'package:flutter/material.dart';

class buttomBar extends StatefulWidget {
  @override
  _buttomBarState createState() => _buttomBarState();
}

class _buttomBarState extends State<buttomBar> {
  TextEditingController _textController;
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
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

