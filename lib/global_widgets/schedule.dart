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

  EventInfo(N,S,E,fc){
    name=N;
    start=S;
    end=E;
    fillColor=fc;
    splashColor=Colors.white;
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
  Color sepColor;

  Container eventCellGen (String name,double start,double end,Color fillColor,Color rippleColor){
    Text txt = Text(name);
    if(name == "Folk Dance"){
      txt = Text(name,style: TextStyle(fontSize: 10),);
    }
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
                  child: txt,)
            )
        )
    );
  }

  List<Container> scheduleRowGen(List<EventInfo> data){
    List<Container> row = [];

    for(int i=0;i<data.length;i++){
      if(i==0 && data[i].start!=8){
        row.add(Container(
          margin: EdgeInsets.fromLTRB(0, 2.5, 0, 2.5),
          height: 25,
          width: (data[i].start - 8.0) * 70,
          child: null,
        ));
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
        row.add(Container(
          margin: EdgeInsets.fromLTRB(0, 2.5, 0, 2.5),
          height: 25,
          width: (data[i + 1].start - data[i].end) * 70,
          child: null,
        ));
      }
    }
    return row;
  }

  void initState(){
    super.initState();

    sepColor = Colors.amber;

    titleColumn =  [
      "8AM to 9AM",
      "9AM to 10AM",
      "10AM to 11AM",
      "11AM to 12PM",
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
    titleRow = [
      "March 13",
      "Main Stage",
      "Indoor Stadium",
      "CR 305",
      "March 14",
      "Main Stage",
      "Indoor Stadium",
      "Library Audi 1",
      "Library Audi 2",
      "CR 407,408",
      "ISE Lab",
      "FDC Hall",
      "BSN Hall",
      "CR 406",
      "CR 402",
      "CR 404",
      "CR 305",
      "MESH Hall",
      "MV Hall",
      "CR 402,403",
      "CR 302",
      "CR 303",
      "CR 305",
      "CR 304",
      "CR 306",
      "March 15",
      "Main Stage",
      "Indoor Stadium",
      "Auditorium 2",
      "Auditorium 1",
      "FDC Hall",
      "Space between PG block and PJAC ",
      "ISE lab",
      "CR 501,505 ",
      "CR 405",
      "CR 404",
      "CR 305",
      "CSE Seminar Hall",
      "MESH",
      "BSN Hall",
      "ISE Seminar Hall",
      "CR 406",
    ];
    rows.add([Container(color:Colors.white30,margin: EdgeInsets.fromLTRB(0, 2.5, 0, 2.5), height: 25, width: 13.0*70.0, child: null,)]);
    rows.add(scheduleRowGen([
      EventInfo("Inauguration", 17.0, 18.5, Colors.indigoAccent),
      EventInfo("Group Dance", 18.5, 21.0, Colors.purpleAccent)
    ]));
    rows.add(scheduleRowGen([
      EventInfo("Antarmukhi", 16.5, 18.0, Colors.purpleAccent),
      EventInfo("Mr. UTSAV", 18.5, 21.0, Colors.indigoAccent)
    ]));
    rows.add(scheduleRowGen([
      EventInfo("VR Game Experience", 14.0, 17.0, Colors.indigoAccent),
    ]));
    rows.add([Container(color:Colors.white30,margin: EdgeInsets.fromLTRB(0, 2.5, 0, 2.5), height: 25, width: 13.0*70.0, child: null,)]);
    rows.add(scheduleRowGen([
      EventInfo("Battle of Bands",11.0, 14.5, Colors.indigoAccent, ),
      EventInfo("ESH", 14.5, 16.5, Colors.purpleAccent, ),
      EventInfo("Folk Dance", 16.5, 17.0,  Colors.indigoAccent),
      EventInfo("Fashion show", 17.0, 19.5, Colors.indigoAccent, ),
      EventInfo("EDM Night", 19.5, 21.0, Colors.purpleAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("Solo Dance", 10.0, 14.0, Colors.indigoAccent, ),
      EventInfo("Mad ads", 14.0, 17.0, Colors.purpleAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("VISTAAR - Indian Group Music", 12.0, 15.0, Colors.indigoAccent, ),
      EventInfo("Anime Quiz", 15.0, 17.0, Colors.purpleAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("Photo Stage", 9.0, 14.0, Colors.indigoAccent, ),
      EventInfo("Vocal Solo", 14.0, 17.0, Colors.purpleAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("Infinite aMAZE", 14.0, 17.0, Colors.indigoAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("Mock Placments", 9.0, 13.5, Colors.indigoAccent, ),
      EventInfo("Online Crypt Hunt", 13.5, 15.5, Colors.purpleAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("Layakari, GAMAKA Instrumental", 9.0, 15.0, Colors.indigoAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("Potpouri", 13.0, 17.0, Colors.purpleAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("CS GO", 9.0, 12.5, Colors.indigoAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("Zenith", 11.0, 14.0, Colors.purpleAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("PUBG Mobile", 9.0, 13.0, Colors.indigoAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("VR Game Experience", 9.0, 13.0, Colors.purpleAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("Rasaprashne", 11.0, 13.0, Colors.indigoAccent, ),
      EventInfo("Anthyakshari", 13.0, 15.0, Colors.purpleAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("SARGAM Classic Vocal Solo", 9.0, 13.5, Colors.indigoAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("Strategist's Day out", 10.0, 13.0, Colors.purpleAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("Digital Marketing Workshop", 14.0, 17.0, Colors.indigoAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("The Big Pitcher!", 14.0, 17.0, Colors.purpleAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("VR Game Experience", 9.0, 17.0, Colors.indigoAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("Manga Drawing Competition", 14.0, 17.0, Colors.purpleAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("Workshop on decaupage's art", 10.0, 13.5, Colors.indigoAccent, ),
      EventInfo("Paint the Puzzle", 14.0, 17.0, Colors.purpleAccent, ),
    ]));
    rows.add([Container(color:Colors.white30,margin: EdgeInsets.fromLTRB(0, 2.5, 0, 2.5), height: 25, width: 13.0*70.0, child: null,)]);
    rows.add(scheduleRowGen([
      EventInfo("Sound Check", 9.0, 16.0, Colors.indigoAccent, ),
      EventInfo("Whiplash", 16.5, 21.0, Colors.purpleAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("Turtle Jam", 9.0, 17.0, Colors.indigoAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("Western Group Acoustics", 10.0, 14.0, Colors.purpleAccent, ),
      EventInfo("Invincible", 14.0, 16.0, Colors.indigoAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("General Quiz", 10.0, 13.5, Colors.purpleAccent, ),
      EventInfo("Fandom Quiz", 13.5, 16.5, Colors.indigoAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("MISHRAM - Light Vocal Solo", 10.0, 14.5, Colors.purpleAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("Dude Perfect", 14.0, 17.0, Colors.indigoAccent ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("Code-A-Thon", 9.0, 13.0, Colors.purpleAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("END: Escape into neuvo decennium", 13.0, 16.0, Colors.indigoAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("Call Of Duty Mobile", 9.0, 13.0, Colors.purpleAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("Don’t Brush!", 9.0, 13.0, Colors.indigoAccent ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("VR Game Experience", 9.0, 13.0, Colors.purpleAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("Mission Improv-able", 12.0, 13.0, Colors.indigoAccent ),
      EventInfo("Math Mania 2.0", 14.0, 17.0, Colors.purpleAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("Mookabhinaya", 10.0, 13.0, Colors.indigoAccent, ),
      EventInfo("Charchspardhe", 13.0, 15.0, Colors.purpleAccent, ),
      EventInfo("Chakravyuha", 15.0, 17.0, Colors.indigoAccent ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("Debate Melange", 10.0, 17.0, Colors.purpleAccent, ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("Mock IPL Auction", 14.0, 17.0, Colors.indigoAccent ),
    ]));
    rows.add(scheduleRowGen([
      EventInfo("FIFA", 9.0, 13.0, Colors.purpleAccent, ),
    ]));
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
        cellDimensions: CellDimensions(contentCellWidth: 70,contentCellHeight: 30,stickyLegendWidth: 90,stickyLegendHeight: 40),
        columnsTitleBuilder: (i) => Container(child:Text(titleColumn[i],style: TextStyle(fontWeight: FontWeight.w500,fontFamily: "Roboto",),), color: Colors.lightBlueAccent, alignment: Alignment.center, height: 50,width: 100,),
        rowsTitleBuilder: (i) => Container(child:Text(titleRow[i],style: TextStyle(fontWeight: FontWeight.w600,fontFamily: "Roboto",fontSize: 24),), color: setColorRT(titleRow[i]), alignment: Alignment.center, height: 50,width: 175,),
        legendCell: Text("\t\t\t\t\t\tTimings\nVenue", style: TextStyle(fontFamily: "Roboto", color: Colors.white)),
      ),
    );
  }

  Color setColorRT(String t){
    if(t.startsWith("March")){
      return Colors.white30;
    }
    else {
      return Colors.amber;
    }
  }

}