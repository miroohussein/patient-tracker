

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
        SingleChildScrollView(
          scrollDirection:Axis.horizontal,
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 5, 0, 5),
                    child: Image.asset("assets/images/service1.png",width: 100,height: 100),
                  ),

                  Column(
                    children:<Widget> [

                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 50, 5),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 5, 50, 5),
                          child: Text("Online consultation",style: TextStyle(color:Colors.teal,fontSize: 25 ,),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                        child: Text ("Schedule a voice or video call with your Doctor"),
                      ),

                    ],

                  ),
                ],
              ),
            Container(height:0.5,width: 500,color: Colors.teal,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 5, 0, 5),
                    child: Image.asset("assets/images/service2.png",width: 100,height: 100),
                  ),
                  Column(children:<Widget> [

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 90, 5),
                      child: Text("Home Visit",style: TextStyle(color:Colors.teal,fontSize: 25 ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),

                      child: Text("Choose the specialty and Doctor will visit your Home"),
                    ),

                  ],
                  ),
                ],
              ),
              Container(height:0.5,width: 500,color: Colors.teal,),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 100, 5),
                child: Container(

                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 5, 15, 5),
                        child: Image.asset("assets/images/service3.png",width: 80,height: 80),
                      ),
                      Column(children:<Widget> [

                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 5, 20, 5),
                          child: Text("Genetic diseases",style: TextStyle(color:Colors.teal,fontSize: 25,),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                          child: Text("know your disease before you know"),
                        ),

                      ],
                      ),
                    ],
                  ),
                ),
              ),

            ],
            ),
        ),
        );


  }

}