import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_watch_shop/global_widgets/custom_appbar.dart';

import 'custom_appbar.dart';

class Page extends StatelessWidget {
  final String title;

  Page(this.title);

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
                Text("Hello World"),
                Text('Goodbye World',style: new TextStyle(color: Colors.white70),)],
            ),
          ),
        ),
      ],
    );
  }
}
