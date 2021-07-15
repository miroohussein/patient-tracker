

import 'package:flutter/material.dart';
class UpcomingServices  extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UpcomingServicesState();
  }
}

class UpcomingServicesState extends State<UpcomingServices> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F7),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 178, 162,1),
        title: Center(
          child: Text("Upcoming Services",style: TextStyle(
            color: Colors.white,
            fontSize: 25,

          ),),

        ),
      ),

      body:
        Column(
          children: <Widget>[
            Column(
              children:<Widget> [

                Text("Online consultation"),
                Text("Schedule a voice or video call with your Doctor"),
                   TextButton(onPressed: (){}, child: Text("Book a call"),),
              ],

            ),
          Container(height:0.5,width: 500,color: Colors.teal,),
            Column(children:<Widget> [

              Text("Home Visit"),
              Text("Choose the specialty and Doctor will visit your Home"),
              TextButton(onPressed: (){}, child: Text("Book a Visit"),),
            ],
            ),
          ],
          ),
        );


  }

}