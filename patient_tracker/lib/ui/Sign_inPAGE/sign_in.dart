
 import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class sign_in  extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return sign_inState();
  }
}

class sign_inState extends State<sign_in> {
  Color mainColor = Color.fromRGBO(19, 138, 222,1);
  bool password_visible=true;
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
       body: Container(

         alignment: Alignment.center,
         child: Stack(
           alignment: Alignment.center,
         children: <Widget>[

              Image.asset("assets/images/logo.png",width: 200,height: 700, alignment:Alignment.topCenter ,),

             Container(
               width: 350,
               height: 320,
               decoration: BoxDecoration(
                 border:Border.all( color: Color(0xFF1EB2B2) ,),
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10),
               ),
             child: Column(
               children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Icon(Icons.add_to_home_screen, color: Color(0xFF1EB2B2) ,),
                 ),
                 Text("Sign in",style: TextStyle( color: Color(0xFF1EB2B2) ,fontSize: 20),
                 ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "E-mail",
                         suffixIcon: Icon(Icons.email),
                          labelStyle: TextStyle(
                            color: Color(0xFF1EB2B2) ,
                            fontSize: 17,
                          ),),
                      ),),

                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextField(
                     decoration: InputDecoration(
                       labelText: "Password",
                       labelStyle: TextStyle(
                         color: Color(0xFF1EB2B2) ,
                         fontSize: 17,

                       ),
                      suffixIcon: IconButton( icon:Icon(password_visible?Icons.visibility:Icons.visibility_off),
                        onPressed: () {
                           setState(() {
                                  password_visible=! password_visible;

                           }
                           );
                        },




                 ),

                     ),
                     keyboardType: TextInputType.visiblePassword,
                       obscureText: password_visible,
                   ),),

                   Center(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children:<Widget>[
                           Padding(
                             padding: const EdgeInsets.all(20.0),
                             child: MaterialButton(

                                 padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                                  color: Colors.white,
                                   onPressed:(){},
                                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side:BorderSide(color: Colors.teal,),),
                                      child: Text("previous",style: TextStyle( color: Color(0xFF1EB2B2) ,),)
                                       ),
                           ),

                         Padding(
                           padding: const EdgeInsets.all(20.0),
                           child: MaterialButton(
                               padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                                 color: Color(0xFF1EB2B2) ,
                                 onPressed:(){},
                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                 child: Text("  Next    ",style: TextStyle(color: Colors.white,),textAlign:TextAlign.center,)
                             ),
                           ),


                       ]

                     ),







                     ),




               ],








               )







),















         ],
         ),
       ),
     );
   }
 }
