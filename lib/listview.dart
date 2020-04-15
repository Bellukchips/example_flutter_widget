import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("LIstview"),
      ),
      body: new ListView(
        children: <Widget>[
          new Column(
            children: <Widget>[
              isiList(
                gambar:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrt-0PNmO1N6Kyh0IX-ZnLwDj4XQf5fbNyH1XO-p4UlfqutxGX",
                judul: "Marvel",
                detail: "Inis Marvel",
              ),
              isiList(
                gambar:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrt-0PNmO1N6Kyh0IX-ZnLwDj4XQf5fbNyH1XO-p4UlfqutxGX",
                judul: "Marvel",
                detail: "Inis Marvel1",
              ),
              isiList(
                gambar:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrt-0PNmO1N6Kyh0IX-ZnLwDj4XQf5fbNyH1XO-p4UlfqutxGX",
                judul: "Marvel",
                detail: "Inis Marvel1",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class isiList extends StatelessWidget {
  isiList({this.gambar, this.judul, this.detail});
  final String gambar;
  final String judul;
  final String detail;
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(top: 20.0),
      child: new Card(
        child: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Image(
                  image: new NetworkImage(gambar),
                ),
                new Text(judul),
              ],
            )
          ],
        ),
      ),
    );
  }
}
