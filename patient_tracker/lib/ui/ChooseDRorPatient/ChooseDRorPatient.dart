
 import 'package:flutter/material.dart';

class DRorPATIENT extends StatelessWidget {
  Color mainColor = Color.fromRGBO(19, 138, 222,1);
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(
         backgroundColor: Color(0xFF1EB2B2) ,
         leading: IconButton(

             onPressed: ()
             { },
             icon: Icon(
               Icons.arrow_back_ios,
               color: Colors.white,
             )),),
       body:

           Container(
             child:SingleChildScrollView(
               child: Column(
                 children: <Widget> [

                       Container(

                           margin: EdgeInsets.fromLTRB(10, 10, 5, 0),
                           child: Center(child: Image.asset("assets/images/logo.png",width: 200,height: 200))

                       ),







                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(" Please select!  ",
                            style: TextStyle(
                            color: mainColor,
                            fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,),),
                      ),

                        SingleChildScrollView(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                           children:<Widget>[
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Column(
                                 children:<Widget>[
                               Image.asset("assets/images/doctorr.png",width: 170,height: 320,) ,


                                Container(
                                  width: 100,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),

                                    gradient: LinearGradient(colors: [Colors.greenAccent,Colors.blue]),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: MaterialButton(
                                         padding: EdgeInsets.fromLTRB(15, 15, 15, 15),

                                       onPressed:(){},
                               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                               child: Text("Doctor",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                     ),
                                    ),
                                  ),
                                ),
                          ],
                        ),
                             ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(25, 5, 5, 5),
                                  child: Container(

                                    child: Column(

                                      children:<Widget>[
                                       Image.asset("assets/images/patient.png",width: 170,height: 320,) ,


                                       Container(
                                         width: 100,
                                         height: 60,
                                         decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(20),

                                           gradient: LinearGradient(colors: [Colors.greenAccent,Colors.blue]),
                                         ),
                                         child: Padding(
                                           padding: const EdgeInsets.all(8.0),
                                           child: Center(
                                             child: MaterialButton(
                                                 padding: EdgeInsets.fromLTRB(15, 15, 15, 15),

                                                 onPressed:(){},
                                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                                 child: Text("Patient",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                                             ),
                                           ),
                                         ),
                                       ),
                                     ],
                               ),
                                  ),
                                ),

               ],
                   ),
                        ),

                 ],
                   ),
             ),
           ),












       );






   }
 }
 