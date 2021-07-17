

import 'package:flutter/material.dart';
import 'package:patient_tracker/ui/pojooo/pj_records.dart';

class records extends StatefulWidget {

  @override

  _recordsState createState() => _recordsState();
}

class _recordsState extends State<records> {

  @override
  Color mainColor =Color(0xFF1EB2B2);
  final List<records_class> records_list= records_class.getRecords_list();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Center(child: Text("My records")),
      ),

    body: ListView.builder(itemCount: 12, itemBuilder:( BuildContext context,int viewIndex) {

    return Stack(

    children:<Widget>[

    Container(
    height: 90,
    width: 395,
    child: Card(

    margin: EdgeInsets.fromLTRB(3, 5, 5, 3),
    elevation:5.5 ,
    color: Colors.white,

    child: Column(
    children:<Widget>[


       ListTile(
      title:
         Text(records_list[viewIndex].patient_names ,style: TextStyle(color:Colors.black , fontSize:20, fontWeight:FontWeight.bold),),


      subtitle: Text("${records_list[viewIndex].modifying}" ,style: TextStyle(color:Colors.black , fontSize:15,),),
        onTap: () => debugPrint(""),
        leading: CircleAvatar(
          maxRadius: 30,
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
               color: mainColor,
               borderRadius: BorderRadius.only(topRight:Radius.circular(40),bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40),topLeft:Radius.circular(40),),

            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text(records_list[viewIndex].patient_names[0],style:TextStyle(color: Colors.white,fontSize: 30,) ,)),
            ),
          ),
        ),
      ),

    ],
    ),
    ),
    ),
    // Container(
    // margin: EdgeInsets.fromLTRB(10, 50, 3, 5),
    // width: 100,
    // height: 100,
    // decoration: BoxDecoration(shape: BoxShape.circle),
    // child: Image.asset("assets/images/dr.png",fit: BoxFit.cover,),
    // ),
    ],
    );

    }
    ),
    );
  }
}
