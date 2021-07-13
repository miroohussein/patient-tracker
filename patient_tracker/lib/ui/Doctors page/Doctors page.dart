
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
//
// class doctors_page  extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return doctors_pageState();
//   }
// }
//
// class doctors_pageState extends State<doctors_page> {
//   Color mainColor = Color.fromRGBO(19, 138, 222,1);
//   bool password_visible=true;
//   @override
//   Widget build(BuildContext context) {
class doctors_page extends StatelessWidget {
  @override
  Color mainColor = Color.fromRGBO(19, 138, 222,1);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.red.shade800,
              )),
        ],

      ),
    body: ListView.builder(itemCount: 5, itemBuilder:( BuildContext context,int index) {
      return Stack(

        children:<Widget>[

          Container(
            height: 210,
            child: Card(

            margin: EdgeInsets.fromLTRB(3, 5, 5, 3),
            elevation:5.5 ,
            color: Colors.white,

                child: Column(
                  children:<Widget>[
                   ListTile(
                        // leading: Container(
                        //
                        //   child: CircleAvatar(
                        //     radius: 50,
                        //
                        //     child: Container(
                        //       child: Image.asset("assets/images/dr.png",fit: BoxFit.cover,),
                        //     ),
                        //   ),
                        // ),
                     title: Padding(
                       padding: const EdgeInsets.fromLTRB(100, 5, 0, 0),
                       child: Text("Doctor name" ,style: TextStyle(color:mainColor, fontSize:25, fontWeight:FontWeight.bold),),
                     ),),



                       Padding(
                         padding: const EdgeInsets.fromLTRB(150, 5, 0, 5),
                         child: Container(
                           alignment: Alignment.centerLeft,
                           child: RatingBar.builder(
                             itemSize: 14,
                                   textDirection:TextDirection.ltr ,
                                   initialRating: 5,
                                         minRating: 1,
                                         direction: Axis.horizontal,
                                        allowHalfRating: true,
                                               itemCount: 5,

                                         itemBuilder: (context, _) => Icon(
                               Icons.star,
                                     color: Colors.amber,
                                  ), onRatingUpdate: (double value) {  },),
                         ),
                       ),
                    Container(
                      margin: EdgeInsets.fromLTRB(150, 5, 5, 3),
                      child: Row(
                         children:<Widget>[

                      Icon(Icons.attach_money,color: Colors.green,size: 20,),
                           Text("200 L.E"),
],

                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(150, 5, 5, 3),
                      child: Row(
                        children:<Widget>[

                          Icon(Icons.location_on,color: Colors.red,size: 20,),
                          Text("Location"),
                        ],

                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(150, 5, 5, 3),
                      child: Row(
                        children:<Widget>[

                          Icon(Icons.watch_later_outlined,color:mainColor,size: 20,),
                          Text("Waiting time : 11 min"),
                        ],

                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(150, 5, 5, 3),
                      child: Row(
                        children:<Widget>[

                          Icon(Icons.call,color: Colors.green,size: 20,),
                          Text("11977-cost of regular call"),
                        ],

                      ),
                    ),



],
               ),


         ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 50, 3, 5),
              width: 100,
                height: 100,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Image.asset("assets/images/dr.png",fit: BoxFit.cover,),
          )
      ],
      );





    }






    ),






    );




  }
}
