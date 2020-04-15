import 'package:flutter/material.dart';
import './location.dart' as lokasi;
import './music.dart' as music;
import './people.dart' as orang;
import './looks.dart' as looks;
import './activity.dart' as act;

class Bar extends StatefulWidget {
  _BarState createState() => _BarState();
}

class _BarState extends State<Bar> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    controller = new TabController(vsync: this, length: 5);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Tab Bar"),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.library_music),
            ),
            new Tab(
              icon: new Icon(Icons.people),
            ),
            new Tab(
              icon: new Icon(Icons.looks),
            ),
            new Tab(
              icon: new Icon(Icons.local_activity),
            ),
            new Tab(
              icon: new Icon(Icons.location_on),
            ),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new music.Music(),
          new orang.People(),
          new looks.Looks(),
          new act.Activiy(),
          new lokasi.Location()
        ],
      ),
      /* bottomNavigationBar: new Material(
        color: Colors.purple[100],
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.library_music),
            ),
            new Tab(
              icon: new Icon(Icons.people),
            ),
            new Tab(
              icon: new Icon(Icons.looks),
            ),
            new Tab(
              icon: new Icon(Icons.local_activity),
            ),
            new Tab(
              icon: new Icon(Icons.location_on),
            ),
          ],
        ),
      ), */
      bottomNavigationBar: new Material(
        color: Colors.blue,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.library_music),
            ),
            new Tab(
              icon: new Icon(Icons.people),
            ),
            new Tab(
              icon: new Icon(Icons.looks),
            ),
            new Tab(
              icon: new Icon(Icons.local_activity),
            ),
            new Tab(
              icon: new Icon(Icons.location_on),
            ),
          ],
        ),
      ),
    );
  }
}
