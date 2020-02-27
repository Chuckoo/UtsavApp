import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class DrawerMenu extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return DrawerMenuState();
  }
}

class DrawerMenuState extends State<DrawerMenu>{

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.black12,
        splashColor: Colors.purpleAccent,
      ),
      child:Drawer(
        child: ListView(
          children: <Widget>[

            ListTile(
              title: Text("MENU 1",style: TextStyle(fontSize: 20,color: Colors.white),),
              trailing: Icon(Icons.bookmark,color: Colors.white),
            ),
            Divider(
              color: Colors.white,
              thickness: 0.7,
            ),
            ListTile(
              title: Text("MENU 2",style: TextStyle(fontSize: 20,color: Colors.white),),
              trailing: Icon(Icons.bookmark,color: Colors.white,),
              onTap: (){},
            ),
            Divider(
              color: Colors.white,
              thickness: 0.7,
            ),
            ListTile(
              title: Text("MENU 3",style: TextStyle(fontSize: 20,color: Colors.white),),
              trailing: Icon(Icons.bookmark,color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }

}