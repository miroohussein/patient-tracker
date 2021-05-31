
 import 'package:flutter/material.dart';

class DRorPATIENT extends StatelessWidget {
  Color mainColor = Color.fromRGBO(19, 138, 222,1);
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.white,
       body:Padding(
         padding: const EdgeInsets.all(10.0),

           child: Container(
             child:SingleChildScrollView(
               child: Column(
                 children: <Widget> [
                   Image.asset("assets/images/logo.png",width: 200,height: 200),
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


                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: MaterialButton(
                                       padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                                     color: mainColor,
                                     onPressed:(){},
                               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                               child: Text("Doctor",style: TextStyle(color: Colors.white,),)
                     ),
                                  ),
                                ),
                          ],
                        ),
                             ),
                                Column(
                                 children:<Widget>[
                                   Image.asset("assets/images/patient.png",width: 170,height: 320,) ,


                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Center(
                                       child: MaterialButton(
                                           padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                                           color: mainColor,
                                           onPressed:(){},
                                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                           child: Text("Patient",style: TextStyle(color: Colors.white,),)
                                       ),
                                     ),
                                   ),
                                 ],
                               ),

               ],
                   ),
                        ),
              ],
                   ),
             ),
           ),










           ),

       );






   }
 }
 