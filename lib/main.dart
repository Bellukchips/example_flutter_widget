import 'package:example/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/scheduler.dart';
import 'package:example/animationSignin.dart';
/* import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart'; */

void main() => runApp(new Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false, //menghilangkan Pita Debug
      title: "Nothing",
      home: new loginpage(),
    );
  }
}

class loginpage extends StatefulWidget {
  const loginpage({Key key}) : super(key: key);
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> with TickerProviderStateMixin {
  var statusClick = 0;
  TextEditingController editingControlleruser;
  TextEditingController editingControllerpass;
  AnimationController controlbutton;
  @override
  void initState() {
    // TODO: implement initState
    editingControlleruser = new TextEditingController(text: '');
    editingControllerpass = new TextEditingController(text: '');
    super.initState();
    controlbutton =
        AnimationController(duration: Duration(seconds: 3), vsync: this)
          ..addStatusListener((status) {
            if (status == AnimationStatus.dismissed) {
              setState(() {
                statusClick = 0;
              });
            }
          });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controlbutton.dispose();
  }

  Future<Null> _playAnimasi() async {
    try {
      await controlbutton.forward();
      await controlbutton.reverse();
    } on TickerCanceled {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("img/bg.jpg"), fit: BoxFit.cover)),
        child: new Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                Color.fromRGBO(162, 146, 199, 0.8),
                Color.fromRGBO(51, 51, 63, 0.9),
              ],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter)),
          child: ListView(
            children: <Widget>[
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 100.0),
                      ),
                      Container(
                        padding: new EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                            ),
                            Text(
                              "Welcome My Apps",
                              style: new TextStyle(
                                  fontSize: 30.0, color: Colors.white),
                            ),
                            TextField(
                              controller: editingControlleruser,
                              decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.person_outline,
                                    color: Colors.white,
                                  ),
                                  hintText: "Username"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                            ),
                            TextField(
                              controller: editingControllerpass,
                              decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.lock_outline,
                                    color: Colors.white,
                                  ),
                                  hintText: "Password"),
                            ),
                            FlatButton(
                              padding: const EdgeInsets.only(
                                  top: 190.0, bottom: 30.0),
                              onPressed: null,
                              child: null,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  /**
                 * jika tidak di clik maka akan menampilkan 0
                 * jika di klik maka akan menammpilkan animasi dari file animasisignin.dart
                   */
                  statusClick == 0
                      ? new InkWell(
                          onTap: () {
                            setState(() {
                              statusClick = 1;
                            });
                            _playAnimasi();
                          },
                          child: new signin(),
                        )
                      : new animasi(
                          buttoncontrol: controlbutton.view,
                          user: editingControlleruser.text,
                          pass: editingControllerpass.text,
                        )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
              ),
              new GestureDetector(
                child: new Center(
                  child: new Text(
                    "Do you have account? Sign Up Here",
                    style: new TextStyle(color: Colors.white, fontSize: 14.0),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext) => new Registeruser()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(70.0), //mengatur pading button
      child: new Container(
        alignment:
            FractionalOffset.center, //mengatur teks agar di tengah button
        width: 320.0,
        height: 60.0,
        decoration: BoxDecoration(
            color: Colors.purple[200],
            borderRadius: BorderRadius.all(const Radius.circular(30.0))),
        child: new Text(
          "Sign In",
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
