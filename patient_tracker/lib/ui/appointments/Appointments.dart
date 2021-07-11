
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class appointments extends StatelessWidget {
  Color mainColor = Color.fromRGBO(19, 138, 222,1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ListView.builder(itemCount: 5, itemBuilder:( BuildContext context,int index) {
        return Stack(

          children:<Widget>[

            Center(
              child: Container(

                height: 205,
                width: 370,
                child: Card(
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                  elevation:5.5 ,
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
                             Text("Tuesday,14/7/020" ,style: TextStyle(color:Colors.white, fontSize:24,),),

                            ),
                        ),
                      ),



                      Container(

                        child: Row(
                          children:<Widget>[


                            Padding(
                              padding:const EdgeInsets.fromLTRB(15, 10, 10, 5),
                              child: Text("Doctor Folan Elfolany",style: TextStyle(color: Colors.blueAccent),),
                            ),

                          ],

                        ),
                      ),
                      Container(

                        child: Row(
                          children:<Widget>[

                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 10, 10, 20),
                              child: Text("surgical Oncologist-Consultant"),
                            ),
                          ],

                        ),
                      ),

                      Container(
                        width: 400,
                        height: 0.5,
                        color: Color.fromRGBO(112, 112, 112,1),

                      ),




                         Center(
                          child: ButtonBar(
                              alignment: MainAxisAlignment.center,

                              children: [TextButton(onPressed: () {}, child: Center(child: Text("Canceled",style: TextStyle(color: Colors.red,fontSize: 20,),)))]




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
