import 'package:example/register.dart';
import 'package:flutter/material.dart';
import 'package:example/home.dart';

// ignore: camel_case_types
class animasi extends StatefulWidget {
  animasi({Key key, this.buttoncontrol, this.user, this.pass})
      : shrinkbutton = new Tween(begin: 320.0, end: 70.0).animate(
            CurvedAnimation(
                parent: buttoncontrol,
                curve: Interval(0.0, 0.150, curve: Curves.bounceInOut))),
        zoomanimasi = new Tween(begin: 70.0, end: 900.0).animate(
            CurvedAnimation(
                parent: buttoncontrol,
                curve: Interval(0.550, 0.999, curve: Curves.bounceInOut))),
        super(key: key);
  final AnimationController buttoncontrol;
  final Animation shrinkbutton;
  final String user;
  final Animation zoomanimasi;
  final String pass;
  Widget _buildanimasi(BuildContext context, Widget child) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 60.0), //mengatur pading button
        child: zoomanimasi.value <= 300
            ? new Container(
                alignment: FractionalOffset
                    .center, //mengatur teks agar di tengah button
                width: shrinkbutton.value,
                height: 60.0,
                decoration: BoxDecoration(
                    color: Colors.purple[200],
                    borderRadius:
                        BorderRadius.all(const Radius.circular(30.0))),
                child: shrinkbutton.value > 75
                    ? new Text(
                        "Sign In",
                        style: new TextStyle(
                            color: Colors.white,
                            letterSpacing: 0.3,
                            fontWeight: FontWeight.w400,
                            fontSize: 20.0),
                      )
                    : CircularProgressIndicator(
                        strokeWidth: 1.0,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
              )
            : user == 'lukman'
                ? Container(
                    height: zoomanimasi.value,
                    width: zoomanimasi.value,
                    decoration: BoxDecoration(
                      shape: zoomanimasi.value < 600
                          ? BoxShape.circle
                          : BoxShape.rectangle,
                      color: Colors.purple[200],
                    ),
                  )
                : new Container(
                    alignment: FractionalOffset
                        .center, //mengatur teks agar di tengah button
                    width: shrinkbutton.value,
                    height: 60.0,
                    decoration: BoxDecoration(
                        color: Colors.purple[200],
                        borderRadius:
                            BorderRadius.all(const Radius.circular(30.0))),
                    child: shrinkbutton.value > 75
                        ? new Text(
                            "Sign In",
                            style: new TextStyle(
                                color: Colors.white,
                                letterSpacing: 0.3,
                                fontWeight: FontWeight.w400,
                                fontSize: 20.0),
                          )
                        : CircularProgressIndicator(
                            strokeWidth: 1.0,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                  ));
  }

  @override
  _animasiState createState() => _animasiState();
}

class _animasiState extends State<animasi> {
  @override
  Widget build(BuildContext context) {
    widget.buttoncontrol.addListener(() {
      if (widget.zoomanimasi.isCompleted) {
        if (widget.user == 'lukman') {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext) => new Home()));
        }
      }
    });
    return new AnimatedBuilder(
      builder: widget._buildanimasi,
      animation: widget.buttoncontrol,
    );
  }
}
