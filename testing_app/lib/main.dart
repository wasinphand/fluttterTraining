import 'package:flutter/material.dart';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Stacked Squares'),
          backgroundColor: Colors.blue,
        ),
        body: Test(),
      ),
    ),
  );
}
class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
