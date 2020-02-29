import 'package:flutter/material.dart';
import 'package:flutter_watch_shop/utils/utils.dart';
import 'package:line_icons/line_icons.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isHome;

  const CustomAppBar({Key key, this.isHome = true}) : super(key: key);
  @override
  Size get preferredSize => Size(null, 56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {
          if(!isHome){
            Navigator.pop(context);
          }
        },
        icon: Icon(
          isHome ? LineIcons.bars : LineIcons.angle_left,
          color: Colors.black,
          size: 28.0,
        ),
      ),
      title: Image.asset(AppImages.logo, height: 30.0),
      centerTitle: true,
      actions: <Widget>[],
    );
  }
}
