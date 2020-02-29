import 'dart:ui';

import 'package:flutter/material.dart';
import 'table_sticky_headers.dart';

class EventInfo{
  String name;
  String description;
  double start;
  double end;
  Color fillColor;
  Color splashColor;

  EventInfo(N,S,E,fc,sc){
    name=N;
    //description=D;
    start=S;
    end=E;
    fillColor=fc;
    splashColor=sc;
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

  Container eventCellGen (String name,double start,double end,Color fillColor,Color rippleColor){
    return Container(
        margin: EdgeInsets.fromLTRB(0, 2.5, 0, 2.5),
        color: fillColor,
        child: new Material(
            color: Colors.transparent,
            child:InkWell(
                onTap: (){},
                splashColor: rippleColor,
                child:Container(
                  height: 25,
                  width: (end-start)*70.0,
                  alignment: Alignment.center,
                  child: Text(name),)
            )
        )
    );
  }

  List<Container> scheduleRowGen(List<EventInfo> data){
    List<Container> row = [];

    for(int i=0;i<data.length;i++){
      if(i==0 && data[i].start!=8){
        row.add(eventCellGen(
          "",
          8,
          data[i].start,
          Colors.transparent,
          Colors.transparent,
        )
        );
      }
      row.add(eventCellGen(
        data[i].name,
        data[i].start,
        data[i].end,
        data[i].fillColor,
        data[i].splashColor,
      )
      );
      if(i<data.length-1 && data[i].end!=data[i+1].start){
        row.add(eventCellGen(
          "",
          data[i].end,
          data[i+1].start,
          Colors.transparent,
          Colors.transparent,
        )
        );
      }
    }
    return row;
  }

  void initState(){
    super.initState();
    titleColumn =  [
      "8AM to 9AM",
      "9AM to 9AM",
      "10AM to 9AM",
      "11AM to 9AM",
      "12PM to 1AM",
      "1PM to 2AM",
      "2PM to 3PM",
      "3PM to 4PM",
      "4PM to 5PM",
      "5PM to 6PM",
      "6PM to 7PM",
      "7PM to 8PM",
      "8PM to 9PM"
    ];
    titleRow = [
      "Main Stage",
      "Indoor Stadium",
      //"CR 305"
    ];

    rows.add(
        scheduleRowGen(
            [
              EventInfo(
                "Inauguration",
                17.0,
                18.5,
                Colors.amber,
                Colors.blue,
              ),
              EventInfo(
                "Group Dance",
                18.5,
                21.0,
                Colors.red,
                Colors.purple,
              )
            ]
        )
    );

    rows.add(
        scheduleRowGen(
            [
              EventInfo(
                "Antarmukhi",
                16.5,
                18.0,
                Colors.purple,
                Colors.blue,
              ),
              EventInfo(
                "Mr. UTSAV",
                18.5,
                21.0,
                Colors.cyan,
                Colors.purple,
              )
            ]
        )
    );

  }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(
            backgroundColor: Colors.black,
            accentColor: Colors.purpleAccent,
            fontFamily: "Roboto",
        ),
        child: StickyHeadersTable(
          contentList: rows,
          columnsLength: titleColumn.length,
          rowsLength: titleRow.length,
          cellDimensions: CellDimensions(contentCellWidth: 70,contentCellHeight: 30,stickyLegendWidth: 70,stickyLegendHeight: 40),
          columnsTitleBuilder: (i) => Container(child:Text(titleColumn[i],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontFamily: "Roboto",),), color: Colors.lightBlueAccent, alignment: Alignment.center, height: 40,width: 120,),
          rowsTitleBuilder: (i) => Container(child:Text(titleRow[i],style: TextStyle(fontWeight: FontWeight.w700,fontFamily: "Roboto",),), color: Colors.amber, alignment: Alignment.center, height: 50,width: 100,),
          legendCell: Text('Schedule'),
        ),
    );
  }

}