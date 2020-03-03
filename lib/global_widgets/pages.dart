import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_watch_shop/global_widgets/custom_appbar.dart';

import 'custom_appbar.dart';

class AboutPage extends StatelessWidget {
  final String title;

  AboutPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: new DecorationImage(
              image: AssetImage("SVG/2x/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 2.0, sigmaY: 3.0),
            child: Container(
              decoration:
                  new BoxDecoration(color: Colors.black.withOpacity(0.2)),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: CustomAppBar(),
          body: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 5.0),
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/theme.PNG',
                  height: 400,
                  width: 400,
                  fit: BoxFit.fitWidth,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class DevPage extends StatelessWidget {
  final String title;

  DevPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: new DecorationImage(
              image: AssetImage("SVG/2x/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 2.0, sigmaY: 3.0),
            child: Container(
              decoration:
                  new BoxDecoration(color: Colors.black.withOpacity(0.2)),
            ),
          ),
        ),
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          appBar: CustomAppBar(),
          body: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 5.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/vivek.jpg',
                    height: 200,
                    width: 200,
                    fit: BoxFit.fitWidth,
                  ),
                  Text('Vivek V',
                      style:
                          new TextStyle(fontSize: 30, color: Colors.white60)),
                  Image.asset('assets/images/rahul.jpg',
                      height: 200, width: 200, fit: BoxFit.fitWidth),
                  Text('Rahul R S',
                      style:
                          new TextStyle(fontSize: 30, color: Colors.white60)),
                  Image.asset('assets/images/rahul.jpg',
                      height: 200, width: 200, fit: BoxFit.fitWidth),
                  Text('Vikram K',
                      style:
                          new TextStyle(fontSize: 30, color: Colors.white60)),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
