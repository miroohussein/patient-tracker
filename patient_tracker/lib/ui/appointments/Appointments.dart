
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class appointments extends StatelessWidget {
  Color mainColor = Color.fromRGBO(19, 138, 222,1);

  final date =[

    "Tuesday, 14/7/2021",
    "Saturday, 11/7/2021",
    "Tuesday,12/7/2021",

  ];
  final Doctor_name =[

    "Doctor Maher Hassan",
    "Doctor Mohammed Ali",
    "Doctor Khalid Ahmed",

  ];
  final doctor_category =[

    "Surgical oncologist",
    "Oncologist-Professor",
    "Surgical-Professor",

  ];
  final last_button =[
    TextButton(onPressed: () {}, child: Center(child: Text("Canceled",style: TextStyle(color: Colors.red,fontSize: 20,),))),
    IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.location_on,
          color: Colors.red,
          size: 40,
        )),
    TextButton(onPressed: () {}, child: Center(child: Text("Canceled",style: TextStyle(color:Colors.teal,fontSize: 20,),))),


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F7),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 178, 162,1),
        title: Center(
          child: Text("My appointments",style: TextStyle(
           color: Colors.white,
            fontSize: 25,
          ),),

        ),
        toolbarHeight: 79.5,
      ),
      body:


            ListView.builder(itemCount: 3, itemBuilder:( BuildContext context,int index) {

                return Stack(

                  children:<Widget>[

                    Center(
                      child: Container(

                        height: 245,
                        width: 370,
                        child: Card(
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                margin:EdgeInsets.fromLTRB(5, 15, 5, 15),
                          elevation:2 ,
                          color: Colors.white,

                          child: Column(
                            children:<Widget>[

                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),),   color: Color.fromRGBO(112, 112, 112,1),),
                              height: 50,
                              width: 400,

                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(5, 0, 10, 5),
                                  child: ListTile(

                                    title:
                                     Text(date[index] ,style: TextStyle(color:Colors.white, fontSize:20,),),

                                    ),
                                ),
                              ),



                              Container(

                                child: Row(
                                  children:<Widget>[


                                    Padding(
                                      padding:const EdgeInsets.fromLTRB(15, 10, 10, 5),
                                      child: Text(Doctor_name[index],style: TextStyle(color: Colors.blueAccent, fontSize: 20,fontWeight: FontWeight.bold),),
                                    ),

                                  ],

                                ),
                              ),
                              Container(

                                child: Row(
                                  children:<Widget>[

                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(15, 10, 10, 20),
                                      child: Text(doctor_category[index]),
                                    ),
                                  ],

                                ),
                              ),

                              Container(
                                width: 400,
                                height: 0.5,
                                color: Color.fromRGBO(112, 112, 112,1),

                              ),





                                   Container(
                                     alignment:Alignment.center,
                                   child: Center(
                                    child: ButtonBar(
                                        alignment: MainAxisAlignment.center,

                                        children: [TextButton(onPressed: () {}, child: Center(child: last_button[index],))]




                                    ),
                                ),
                                   ),

                  ],

                ),
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
