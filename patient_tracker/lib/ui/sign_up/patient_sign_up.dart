import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class PatientSignUp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PatientSignUpState();
  }

}
class _PatientSignUpState extends State<PatientSignUp>{
  Color mainColor= Color(0xff099bc3);
  Color darkHintTextColor=Colors.white;
  bool passwordVisibility= true;
  bool passwordVisibilityConfirm= true;
  @override

    Widget build(BuildContext context) {

      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.only(top: 70.8,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/logo.png",fit: BoxFit.cover ,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(18.0),
                  margin: EdgeInsets.all(23.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.0),
                    border: Border.all(
                      color: mainColor,
                    )
                  ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                      height: 18,
                      ),

                        Icon(Icons.account_box_outlined,color: mainColor,),

                        SizedBox(
                        height: 18,
                        ),
                        //user full name
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Full Name",
                            hintStyle: TextStyle(
                            color: mainColor,
                            )
                          ),

                          ),
                        SizedBox(
                          height: 18,
                        ),
                        //user ID
                        TextField(
                          decoration: InputDecoration(
                              hintText: "ID",
                              hintStyle: TextStyle(
                                color: mainColor,
                              )
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        //user Birthday
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Birthday",
                              hintStyle: TextStyle(
                                color: mainColor,
                              )
                          ),
                          keyboardType: TextInputType.datetime,
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        //user Address
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Address",
                              hintStyle: TextStyle(
                                color: mainColor,
                              )
                          ),
                          keyboardType: TextInputType.streetAddress,
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        //user phone Number
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Phone Number",
                              hintStyle: TextStyle(
                                color: mainColor,
                              )
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        //user E-mail
                        TextField(
                          decoration: InputDecoration(
                              hintText: "E-mail",
                              hintStyle: TextStyle(
                             color: mainColor,
                             )
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                        height: 18,
                        ),
                        //Password
                        TextField(
                          decoration: InputDecoration(

                            hintText: "Password",
                            hintStyle: TextStyle(
                            color: mainColor,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(passwordVisibility? Icons.visibility:Icons.visibility_off  ),
                              iconSize: 18.0,
                              onPressed:(){
                                setState((){
                                  passwordVisibility=!passwordVisibility;
                                });
                              } ,
                            )
                          ),
                          obscureText: passwordVisibility,
                          keyboardType: TextInputType.visiblePassword,
                        ),
                        SizedBox(
                        height: 18,
                        ),
                        //Confirm Password
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Confirm Password",
                            hintStyle: TextStyle(
                            color: mainColor,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(passwordVisibilityConfirm? Icons.visibility:Icons.visibility_off),
                              iconSize: 18.0,
                              onPressed: (){
                                setState(() {
                                  passwordVisibilityConfirm=!passwordVisibilityConfirm;
                                });
                              },
                            )
                          ),
                          obscureText: passwordVisibilityConfirm,
                          keyboardType: TextInputType.visiblePassword,
                        ),
                        SizedBox(
                        height: 18,
                        ),
                        //Buttons
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              MaterialButton(
                                padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 10.0),
                                color: mainColor,
                                onPressed: (){},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)
                                ),
                                child: Text("Previous", style: TextStyle( color: Colors.white),),
                              ),
                              MaterialButton(
                                padding: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
                                color: mainColor,
                                onPressed: (){},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)
                                ),
                                child: Text("Next", style: TextStyle( color: Colors.white),),
                              )
                            ],
                          ),
                        )






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

