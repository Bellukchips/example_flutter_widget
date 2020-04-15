import 'package:flutter/material.dart';

class Activiy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text("Halaman Local Activity"),
            new Icon(Icons.local_activity)
          ],
        ),
      ),
    );
  }
}
