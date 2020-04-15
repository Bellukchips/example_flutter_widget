import 'package:example/Gridview_hero.dart';
import 'package:example/detail.dart';
import 'package:example/listview.dart';
import 'package:example/listview_json.dart';
import 'package:example/tab_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String gambar1 =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2DQkNPmw1bvH7jmjS36_XT4niNf3N-6JD9SFzcuqoQxb8sE3FQw";
  String gambar2 =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNP1o33BdnbMQcbp3GZdZDe3FwuF8Bwi6UGa2yPeauLIAuscom";
  String cache;

  String nama1 = "Lukman";
  String nama2 = "TKJ";
  String cachenama;
  void gantiuser() {
    this.setState(() {
      cache = gambar1;
      gambar1 = gambar2;
      gambar2 = cache;

      cachenama = nama1;
      nama1 = nama2;
      nama2 = cachenama;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
        backgroundColor: Colors.purple[200],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text(nama1),
              accountEmail: new Text("muhamadlukman937@gmail.com"),
              currentAccountPicture: new GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(); //menunutup DRawer
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext) => new Detail(
                              nama: nama1,
                              gambar: gambar1,
                            )));
                  },
                  child: new CircleAvatar(
                      backgroundImage: new NetworkImage(gambar1))),
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMI8KLSLlyDWcFNZo-oYcD5NE53EHQg_Cd0NN7FqovEGokDN-h_w"),
                      fit: BoxFit.cover)),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  //untuk mendeteksi kegiatan user
                  onTap: () => gantiuser(),
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(gambar2),
                  ),
                )
              ],
            ),
            new ListTile(
              title: new Text("Gridview"),
              trailing: new Icon(Icons.grid_on),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext) => new Heroku()));
              },
            ),
            new ListTile(
              title: new Text("Tab Bar"),
              trailing: new Icon(Icons.local_bar),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext) => new Bar()));
              },
            ),
            new ListTile(
              title: new Text("List View"),
              trailing: new Icon(Icons.list),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext) => new Listview()));
              },
            ),
            new ListTile(
              title: new Text("List Json Data"),
              trailing: new Icon(Icons.date_range),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext) => new Jsondata()));
              },
            ),
            new ListTile(
              title: new Text("Colapsing Tool Bar"),
              trailing: new Icon(Icons.date_range),
            )
          ],
        ),
      ),
      body: new Container(),
    );
  }
}
