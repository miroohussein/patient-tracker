
import 'package:flutter/material.dart';
class notifications  extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return notificationsState();
  }
}

class notificationsState extends State<notifications> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F7),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 178, 162,1),
        title: Center(
          child: Text("Notifications",style: TextStyle(
            color: Colors.white,
            fontSize: 25,

          ),),

        ),
      ),
 
      body:
      ListView.builder(itemCount: 5, itemBuilder:( BuildContext context,int index) {

    return Stack(

    children:<Widget>[
    Container(
    height: 100,
    child: Card(

    elevation:5.5 ,
    color: Colors.white,

    child: Column(
    children:<Widget>[
    ListTile(

    title:
    Row(
    children:<Widget> [
    Padding(
    padding: const EdgeInsets.fromLTRB(5, 16, 5, 5),
    child: Icon(Icons.notifications,size: 40,color:Color(0xFFB60B02)),
    ),
    Padding(
    padding: const EdgeInsets.fromLTRB(5, 16, 5, 5),
    child: Text("check your messages",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold, ),),

    ),
    Padding(
    padding: const EdgeInsets.fromLTRB(75, 50, 5, 5),
    child: Text("1/1/2021",style: TextStyle(fontSize:12, ),),
    ),


    ],


    ),

    ),


    ],

    ),
    ),
    ),


    ],
    );

    }
      ),
    );


    }

      }

















