import 'package:flutter/material.dart';

class Heroku extends StatefulWidget {
  _HerokuState createState() => _HerokuState();
}

class _HerokuState extends State<Heroku> {
  List<Container> daftarhero = List();
  var karakter = [
    {"nama": "Hulk", "gambar": "hulk.jpg"},
    {"nama": "Spiderman", "gambar": "spiderman.jpg"},
    {"nama": "Superman", "gambar": "superman.jpg"},
    {"nama": "Batman", "gambar": "batman.jpg"},
  ];
  _buatlist() async {
    //UNTUK MELAKUKAN LOOPING DATA
    for (var i = 0; i < karakter.length; i++) {
      final karakternya = karakter[i];
      final String gambar = karakternya["gambar"];
      daftarhero.add(
        new Container(
            child: new Card(
          child: new Column(
            children: <Widget>[
              new Hero(
                  tag: karakternya['nama'],
                  child: new Material(
                      child: new InkWell(
                    onTap: () =>
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => new Detaill(
                                  nama: karakternya['nama'],
                                  gambar: karakternya['gambar'],
                                ))),
                    child: new Image.asset(
                      'img/$gambar',
                      height: 80.0,
                    ),
                  ))),
              new Text(karakternya['nama'])
            ],
          ),
        )),
      );
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    //Untuk menjalankan _buatlist
    _buatlist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Gridview"),
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        children: daftarhero,
      ),
    );
  }
}

class Detaill extends StatelessWidget {
  Detaill({this.nama, this.gambar});
  final String nama;
  final String gambar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 240.0,
            child: new Hero(
              tag: nama,
              child: new Material(
                child: new InkWell(
                  child: new Image.asset(
                    'img/$gambar',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          new Bagiannamaa(),
          new Bagianicon(),
          new BagianKeterangan(),
        ],
      ),
    );
  }
}

class Bagiannamaa extends StatelessWidget {
  Bagiannamaa({this.nama});
  final String nama;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text("Hero",
                    style: new TextStyle(fontSize: 10.0, color: Colors.blue)),
                new Text("$nama\@gmail.com",
                    style: new TextStyle(fontSize: 10.0, color: Colors.blue)),
              ],
            ),
          ),
          new Row(
            children: <Widget>[
              new Icon(
                Icons.star,
                size: 30.0,
                color: Colors.red,
              ),
              new Text(
                "12",
                style: new TextStyle(fontSize: 20.0),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Bagianicon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Row(
        children: <Widget>[
          new Iconteks(
            icon: Icons.call,
            teks: "Call",
          ),
          new Iconteks(
            icon: Icons.photo,
            teks: "Foto",
          ),
          new Iconteks(
            icon: Icons.history,
            teks: "HIstory",
          ),
        ],
      ),
    );
  }
}

class Iconteks extends StatelessWidget {
  Iconteks({this.icon, this.teks});
  final IconData icon;
  final String teks;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      //penting
      child: Column(
        children: <Widget>[
          new Icon(
            icon,
            color: Colors.blue,
            size: 50.0,
          ),
          new Text(
            teks,
            style: new TextStyle(fontSize: 18.0),
          )
        ],
      ),
    );
  }
}

class BagianKeterangan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Card(
        child: new Padding(
          padding: const EdgeInsets.only(
              bottom: 20.0, top: 10.0, left: 10.0, right: 10.0),
          child: new Text(
              "asjkdhaskjdhaskjdhaskdjkashdakjsdakjhsdahjsdakjhsdakjhsdaskjhdakjhsd"),
        ),
      ),
    );
  }
}
