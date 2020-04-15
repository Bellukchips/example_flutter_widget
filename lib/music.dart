import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text("Halaman Music"),
            new Icon(Icons.library_music)
          ],
        ),
      ),
    );
  }
}
