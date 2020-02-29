import 'package:flutter/material.dart';
import 'package:flutter_watch_shop/utils/utils.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isHome;

  const CustomAppBar({Key key, this.isHome = true}) : super(key: key);
  @override
  Size get preferredSize => Size(null, 56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Image.asset(AppImages.logo, height: 70.0),
      centerTitle: true,
      actions: <Widget>[],
    );
  }
}
