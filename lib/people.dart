import 'package:flutter/material.dart';

class People extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[new Text("Halaman Pople"), new Icon(Icons.people)],
        ),
      ),
    );
  }
}
