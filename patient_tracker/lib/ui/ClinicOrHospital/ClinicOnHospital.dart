
import 'package:flutter/material.dart';

class Clinic_Hospital extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1EB2B2) ,
        leading: IconButton(

            onPressed: ()
            { },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),),
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 100, 5, 5),
              child: Text("Book from Specialities",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),),
            ),
            Container(
              width: 235,
                child: Image.asset("assets/images/hospital.png",width: 170,height: 320,)),
              Container(
                width: 240,
                height: 54,
                child: MaterialButton(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  color: Colors.teal ,
                  onPressed:(){},

                  child: Text("  Clinic    ",style: TextStyle(fontSize:20,color: Colors.white,),textAlign:TextAlign.center,)
              ),),
            Container(
              width: 240,
              height: 54,
              child: MaterialButton(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  color: Colors.white,
                  onPressed:(){},
                  shape: RoundedRectangleBorder(side:BorderSide(color: Colors.teal,),),
                  child: Text("  Hospital    ",style: TextStyle(fontSize:20,color: Colors.teal,),textAlign:TextAlign.center,)
              ),),

          ],
        ),
      )

   , );
  }
}
