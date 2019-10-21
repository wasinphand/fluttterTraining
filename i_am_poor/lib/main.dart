import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:Scaffold(
    appBar: AppBar(
      title: Text("I'M POOR"),
      backgroundColor: Colors.blue,
    ),
    backgroundColor: Colors.black,
    body: Center(
      child: Image(
        image: AssetImage('images/google.jpg'),
      ),
    )

  )
));

