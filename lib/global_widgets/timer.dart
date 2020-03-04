import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CdTimer extends StatefulWidget {
  @override
  CdTimerState createState() => CdTimerState();
}

class CdTimerState extends State<CdTimer> {
  DateTime utsav = DateTime(2020, 3, 13, 8, 0, 0, 0, 0);
  String timeLeft = '';
  Timer everyMin;

  void update() {
    Duration cd = utsav.difference(DateTime.now());
    if(!DateTime.now().isAfter(utsav)){
      timeLeft = "\n${cd.inDays} D ${cd.inHours % 24} H\n${cd.inMinutes % 60} m: ${cd.inSeconds % 60} s";}
    else
      {
        timeLeft = "Utsav is Here !";
        text1 = Text("");
        text2 = Text("");
        text3 = Text("");
      }
  }

  @override
  void initState() {
    super.initState();
    update();
    everyMin = Timer.periodic(Duration(seconds: 1), (Timer t) {
      if (this.mounted) {
        setState(() {
          update();
        });
      }
    });
  }


  final spacer = SizedBox(height: 5.0);

  var text1 = Text(
    "COUNTDOWN",
    style: TextStyle(
        fontSize: 35,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontFamily: "Thunderstrike"),
  );

  var text2 = Text(
    "TO",
    style: TextStyle(
        fontSize: 35,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontFamily: "Thunderstrike"),
  );

  var text3 = Text(
    "UTSAV",
    style: TextStyle(
        fontSize: 35,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontFamily: "Thunderstrike"),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            text1,
            text2,
            text3,
            spacer,
            Text(
              timeLeft,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: "Thunderstrike",
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            spacer,
            spacer,
            spacer,
            spacer,
            InkWell(
              child: MaterialButton(
                onPressed: ()=>launch("http://www.explara.com/e/bmsce-utsav-2020"),
                padding: EdgeInsets.all(20.0),
                color: Colors.deepPurpleAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                child: Text(
                  "Register Now",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.yellowAccent,
                      fontFamily: "Thunderstrike",
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ]),
    );
  }
}
