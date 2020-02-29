import 'package:flutter/material.dart';
import 'package:flutter_watch_shop/global_widgets/DrawerMenu.dart';
import 'package:flutter_watch_shop/global_widgets/custom_appbar.dart';
import 'package:flutter_watch_shop/global_widgets/schedule.dart';
import 'package:flutter_watch_shop/global_widgets/timer.dart';
import 'package:flutter_watch_shop/utils/utils.dart';
import 'package:flutter_watch_shop/views/home/widgets/product_list.dart';
import 'package:flutter/scheduler.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  List<String> tabs = ["Events", "Utsav", "Schedule"];

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  Widget build(BuildContext context) {
    final tabBar = TabBar(
      controller: tabController,
      indicatorColor: Colors.white,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(width: 3.0),
        insets: EdgeInsets.symmetric(horizontal: 40.0),
      ),
      labelColor: Theme.of(context).primaryColor,
      labelStyle: TextStyle(fontSize: 22.0, fontFamily: AppFonts.primaryFont),
      unselectedLabelColor: Theme.of(context).primaryColor.withOpacity(0.5),
      tabs: tabs.map((tabName) => Tab(text: tabName)).toList(),
    );
//
    final tabBarView = Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        margin: EdgeInsets.only(top: 5.0),
        child: TabBarView(
          controller: tabController,
          children: <Widget>[ProductList(), MyApp(), Schedule()],
        ),
      ),
    );

    return Container(
      decoration: BoxDecoration(
        image: new DecorationImage(
          image: AssetImage(AppImages.background),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: CustomAppBar(),
          drawer: DrawerMenu(),
          body: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 5.0),
            child: Column(
              children: <Widget>[tabBar, tabBarView],
            ),
          ),
      ),
    );
  }
}
