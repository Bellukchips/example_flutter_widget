import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text("Halaman Location"),
            new Icon(Icons.location_on)
          ],
        ),
      ),
    );
  }
}
