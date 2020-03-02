import 'package:flutter/material.dart';
import 'dart:async';

class CdTimer extends StatefulWidget {
  @override
  CdTimerState createState() => CdTimerState();
}

class CdTimerState extends State<CdTimer> {

  DateTime utsav = DateTime(2020,3,13,8,0,0,0,0);
  String timeLeft = '';
  Timer everyMin;

  void update(){
    Duration cd = utsav.difference(DateTime.now());
    timeLeft = "${cd.inDays} Days ${cd.inHours % 24} Hours ${cd.inMinutes % 60} Minutes";
  }

  @override
  void initState() {
    super.initState();
    update();
    everyMin = Timer.periodic(Duration(minutes: 1), (Timer t) {
      if(this.mounted){
        setState(() {
          update();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
          timeLeft,
        style: TextStyle(fontSize: 30,color: Colors.white),
      ),
    );
  }

}