import 'dart:ui';
import 'package:flutter/material.dart';
import 'table_sticky_headers.dart';

class EventInfo {
  String name;
  String description;
  double start;
  double end;
  Color fillColor;
  Color splashColor;

  EventInfo(N, S, E, fc, sc) {
    name = N;
    //description=D;
    start = S;
    end = E;
    fillColor = fc;
    splashColor = sc;
  }
}

class Schedule extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ScheduleState();
  }
}

class ScheduleState extends State<Schedule> {
  List<String> titleColumn;
  List<String> titleRow;
  List<List<Container>> rows = [];
  List<String> day;
  int D;
  int cellWidth = 80;

  Container eventCellGen(String name, double start, double end, Color fillColor,
      Color rippleColor) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 2.5, 0, 2.5),
      color: fillColor,
      child: new Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          splashColor: rippleColor,
          child: Container(
            height: 25,
            width: (end - start) * cellWidth,
            alignment: Alignment.center,
            child: Text(name),
          ),
        ),
      ),
    );
  }

  List<Container> scheduleRowGen(List<EventInfo> data) {
    List<Container> row = [];

    for (int i = 0; i < data.length; i++) {
      if (i == 0 && data[i].start != 8.0) {
        row.add(Container(
          margin: EdgeInsets.fromLTRB(0, 2.5, 0, 2.5),
          height: 25,
          width: (data[i].start - 8.0) * cellWidth,
          child: null,
        ));
      }
      row.add(eventCellGen(
        data[i].name,
        data[i].start,
        data[i].end,
        data[i].fillColor,
        data[i].splashColor,
      ));
      if (i < data.length - 1 && data[i].end != data[i + 1].start) {
        row.add(Container(
          margin: EdgeInsets.fromLTRB(0, 2.5, 0, 2.5),
          height: 25,
          width: (data[i + 1].start - data[i].end) * cellWidth,
          child: null,
        ));
      }
    }
    return row;
  }

  void initState() {
    super.initState();
    day = [
      "March 13",
      "March 14",
      "March 15",
    ];
    D = 0;
    titleColumn = [
      "8AM to 9AM",
      "9AM to 10AM",
      "10AM to 11AM",
      "11AM to 12AM",
      "12PM to 1PM",
      "1PM to 2AM",
      "2PM to 3PM",
      "3PM to 4PM",
      "4PM to 5PM",
      "5PM to 6PM",
      "6PM to 7PM",
      "7PM to 8PM",
      "8PM to 9PM"
    ];
    day1();
  }

  void day1() {
    setState(() {
      titleRow = [
        "Main Stage",
        "Indoor Stadium",
        //"CR 305"n
      ];
      rows = [];
      rows.add(scheduleRowGen([
        EventInfo("Inauguration", 17.0, 18.5, Colors.amber, Colors.blue,),
        EventInfo("Group Dance", 18.5, 21.0, Colors.red, Colors.purple,),
      ]));
      rows.add(scheduleRowGen([
        EventInfo("Antarmukhi", 16.5, 18.0, Colors.purple, Colors.blue,),
        EventInfo("Mr. UTSAV", 18.5, 21.0, Colors.cyan, Colors.purple,),
      ]));
    });
  }

  void day2() {
    setState(() {
      titleRow = [
        "Main Stage",
        "Indoor Stadium",
        //"CR 305"n
      ];
      rows = [];
      rows.add(scheduleRowGen([
        EventInfo("asd", 8.0, 13.5, Colors.red, Colors.purple,),
        EventInfo("test", 15.0, 16.0, Colors.amber, Colors.blue,),
      ]));
      rows.add(scheduleRowGen([
        EventInfo("event", 8.0, 13.0, Colors.purple, Colors.blue,),
        EventInfo("asd", 15.0, 16.0, Colors.cyan, Colors.purple,),
      ]));
    });
  }

  void update() {
    switch (D) {
      case 0:
        day1();
        break;
      case 1:
        day2();
        break;
      case 2:
        day1();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        backgroundColor: Colors.black,
        accentColor: Colors.purpleAccent,
        fontFamily: "Roboto",
      ),
      child: Stack(
        children: <Widget>[
          StickyHeadersTable(
            contentList: rows,
            columnsLength: titleColumn.length,
            rowsLength: titleRow.length,
            cellDimensions: CellDimensions(
                contentCellWidth: cellWidth.toDouble(),
                contentCellHeight: 30,
                stickyLegendWidth: cellWidth.toDouble(),
                stickyLegendHeight: 40),
            columnsTitleBuilder: (i) => Container(
              child: Text(
                titleColumn[i],
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto",
                ),
              ),
              color: Colors.lightBlueAccent,
              alignment: Alignment.center,
              height: 40,
              width: 120,
            ),
            rowsTitleBuilder: (i) => Container(
              child: Text(
                titleRow[i],
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: "Roboto",
                ),
              ),
              color: Colors.amber,
              alignment: Alignment.center,
              height: 50,
              width: 100,
            ),
            legendCell: Text(day[D],
                style: TextStyle(fontFamily: "Roboto", color: Colors.white)),
          ),
          Positioned(
            bottom: 10,
            right: 0,
            child: RaisedButton(
              color: Colors.purple,
              onPressed: () {
                setState(() {
                  if (D < 2) {D++;}
                  update();
                });
              },
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            child: RaisedButton(
              color: Colors.purple,
              onPressed: () {
                setState(() {
                  if (D > 0) {D--;}
                  update();
                });
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
