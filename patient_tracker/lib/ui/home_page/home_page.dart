
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Color mainColor = Color.fromRGBO(19, 138, 222,1);
  Widget build(BuildContext context) {
    return Scaffold(
      body:

       Center(
         child: Column(
           children: <Widget>[
             Padding(
               padding: const EdgeInsets.fromLTRB(20, 95, 20, 20),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Text("Home",style: TextStyle(color:mainColor,fontSize: 50 ),),
                   Icon(Icons.home,color: mainColor,size: 50,),








                 ],










               ),
             )












           ],



























),
       )
    );
  }
}
