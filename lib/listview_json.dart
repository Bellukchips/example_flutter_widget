import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Jsondata extends StatefulWidget {
  _JsondataState createState() => _JsondataState();
}

class _JsondataState extends State<Jsondata> {
  List Datajson;
  Future<String> ambildata() async {
    http.Response hasil = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
        headers: {"Accept": "application/json"});
    this.setState(() {
      Datajson = json.decode(hasil.body);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    this.ambildata();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("List Json data"),
      ),
      body: new ListView.builder(
        itemCount: Datajson == null ? 0 : Datajson.length,
        itemBuilder: (context, i) {
          return new Card(
            child: new Container(
              padding: new EdgeInsets.all(10.0),
              child: new Column(
                children: <Widget>[
                  new Center(
                    child: new Text(
                      Datajson[i]['title'],
                      style: new TextStyle(fontSize: 12.0, color: Colors.red),
                    ),
                  ),
                  new Text(Datajson[i]['body'])
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
