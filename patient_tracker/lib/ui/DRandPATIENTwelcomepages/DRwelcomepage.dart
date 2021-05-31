import 'package:flutter/material.dart';

class DRwelcomepage extends StatelessWidget {
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
    child: Text(" This is patient tracker app, WELCOME!",
    style: TextStyle(
    color: mainColor,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    ),
    textAlign: TextAlign.center,),),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
      children:<Widget>[
         Image.asset("assets/images/doctorr.png",width: 400,height: 350,),
             Center(
               child: Padding(
                 padding: const EdgeInsets.all(30),
                 child: MaterialButton(
                     padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                               color: mainColor,
                          onPressed:(){},
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                             child: Text("Sign up",style: TextStyle(color: Colors.white,),)
                                ),
               ),
                                  ),
                                          ],
                                                 ),
    ),
                                         ],), ),),),);
                                                }}