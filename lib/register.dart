import 'package:example/main.dart';
import 'package:flutter/material.dart';

class Registeruser extends StatefulWidget {
  _RegisteruserState createState() => _RegisteruserState();
}

class _RegisteruserState extends State<Registeruser> {
  TextEditingController control1;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.purple[100],
          title: new Text("Register"),
          leading: new Icon(Icons.add),
        ),
        body: new ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: new Column(
                children: <Widget>[
                  Padding(
                    padding: new EdgeInsets.only(top: 10.0),
                  ),
                  new TextField(
                    decoration: new InputDecoration(
                        icon: new Icon(
                          Icons.person_add,
                          color: Colors.blue,
                        ),
                        hintText: "Frist Your Name",
                        labelText: "Frist Your Name",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0))),
                  ),
                  Padding(
                    padding: new EdgeInsets.only(top: 10.0),
                  ),
                  new TextField(
                    decoration: new InputDecoration(
                        icon: new Icon(
                          Icons.person,
                          color: Colors.deepOrangeAccent,
                        ),
                        hintText: "Last Your Name",
                        labelText: "Last Your Name",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0))),
                  ),
                  Padding(
                    padding: new EdgeInsets.only(top: 10.0),
                  ),
                  new TextField(
                    decoration: new InputDecoration(
                        icon: new Icon(
                          Icons.check_circle,
                          color: Colors.greenAccent,
                        ),
                        hintText: "Complete Your Name",
                        labelText: "Complete Your Name",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0))),
                  ),
                  Padding(
                    padding: new EdgeInsets.only(top: 10.0),
                  ),
                  new TextField(
                    decoration: new InputDecoration(
                        icon: new Icon(
                          Icons.email,
                          color: Colors.red[300],
                        ),
                        hintText: "Email Address",
                        labelText: "Email Address",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0))),
                  ),
                  Padding(
                    padding: new EdgeInsets.only(top: 10.0),
                  ),
                  new TextField(
                    obscureText: true,
                    decoration: new InputDecoration(
                        icon: new Icon(
                          Icons.lock_outline,
                          color: Colors.blueGrey,
                        ),
                        hintText: "Password",
                        labelText: "Password",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0))),
                  ),
                  FlatButton(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    onPressed: null,
                    child: null,
                  ),
                ],
              ),
            ),
            new Signup()
          ],
        ));
  }
}

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Container(
        alignment: FractionalOffset.center,
        width: 320.0,
        height: 60.0,
        decoration: BoxDecoration(
            color: Colors.purple[200],
            borderRadius: BorderRadius.all(const Radius.circular(30.0))),
        child: new Text(
          "Sign Up",
          style: new TextStyle(
              color: Colors.white,
              letterSpacing: 0.3,
              fontWeight: FontWeight.w400,
              fontSize: 20.0),
        ),
      ),
    );
  }
}

/*  TextField(
                controller: control1,
                decoration: new InputDecoration(
                    icon: Icon(Icons.person), hintText: "Input Frist Name"),
              ),
              Padding(padding: const EdgeInsets.only(top: 20.0)),
              TextField(
                controller: control1,
                decoration: new InputDecoration(
                    icon: Icon(Icons.person_outline),
                    hintText: "Input Last Name"),
              ),
              Padding(padding: const EdgeInsets.only(top: 20.0)),
              TextField(
                controller: control1,
                decoration: new InputDecoration(
                    icon: Icon(
                      Icons.verified_user,
                      color: Colors.green[200],
                    ),
                    hintText: "Complete Name"),
              ),
              Padding(padding: const EdgeInsets.only(top: 20.0)),
              TextField(
                controller: control1,
                decoration: new InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Colors.green[200],
                    ),
                    hintText: "Email Address"),
              ),
              Padding(padding: const EdgeInsets.only(top: 20.0)),
              TextField(
                controller: control1,
                decoration: new InputDecoration(
                    icon: Icon(
                      Icons.lock_outline,
                      color: Colors.red[200],
                    ),
                    hintText: "Password"),
              ), */
