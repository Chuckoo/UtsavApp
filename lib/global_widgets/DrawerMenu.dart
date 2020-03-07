import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import './pages.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DrawerMenuState();
  }
}

class DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.black54,
        splashColor: Colors.purpleAccent,
      ),
      child: Drawer(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                  fit: BoxFit.cover
                )
              ), child: null,
                
                ),
              
              SizedBox(
                height: 100,
              ),
              new ListTile(
                  title: new Text(
                    "About Us",
                    style: new TextStyle(
                        fontSize: 35,
                        fontFamily: 'Poppins',
                        color: Colors.white60),
                  ),
                  trailing: new Icon(Icons.blur_on),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new AboutPage("First Page")));
                  }),
              SizedBox(
                height: 25,
              ),
              new ListTile(
                  title: new Text(
                    "About Devs",
                    style: new TextStyle(
                        fontSize: 35,
                        fontFamily: 'Poppins',
                        color: Colors.white60),
                  ),
                  trailing: new Icon(Icons.blur_on),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new DevPage("First Page")));
                  }),
                  SizedBox(height: 25,),
                  new ListTile(
                  title: new Text(
                    "About Core",
                    style: new TextStyle(
                        fontSize: 35,
                        fontFamily: 'Poppins',
                        color: Colors.white60),
                  ),
                  trailing: new Icon(Icons.blur_on),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new CorePage("First Page")));
                  }),
                  MaterialButton(
                onPressed: ()=>launch("http://www.instagram.com/bmsce_utsav/"),
                padding: EdgeInsets.all(20.0),
                color: Colors.deepPurpleAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                child: Text(
                  "Contanct Us",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.yellowAccent,
                      fontFamily: "Thunderstrike",
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              
            ],
          ),
        ),
    );
  }
}

Widget menu(context) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 50),
            Text("Utsav 2020",
                style: TextStyle(color: Colors.white, fontSize: 30)),
            SizedBox(height: 30),
            Text("About Us",
                style: TextStyle(color: Colors.white, fontSize: 22)),
            SizedBox(height: 20),
            Text("About Devs",
                style: TextStyle(color: Colors.white, fontSize: 22)),
          ],
        ),
      ),
    ),
  );
}
