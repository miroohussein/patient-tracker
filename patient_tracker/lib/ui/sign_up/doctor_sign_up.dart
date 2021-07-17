import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:patient_tracker/ui/navigationBar/Bar.dart';

class DoctorSignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DoctorSignUpState();
  }
}

class _DoctorSignUpState extends State<DoctorSignUp> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  Color mainColor = Color(0xff1EB2A2);
  Color darkHintTextColor = Colors.white;
  bool passwordVisibility = true;
  bool passwordVisibilityConfirm = true;
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
                margin: EdgeInsets.only(
                  top: 70.8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      fit: BoxFit.cover,
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
                    )),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 18,
                    ),

                    Icon(
                      Icons.account_box_outlined,
                      color: mainColor,
                    ),

                    SizedBox(
                      height: 18,
                    ),
                    //user full name
                    TextField(
                      controller: namecontroller,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: mainColor, width: 2.0),
                          ),
                          labelText: "Full Name",
                          labelStyle: TextStyle(
                            color: mainColor,
                          )),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    //user ID
                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: mainColor, width: 2.0),
                          ),
                          labelText: "ID",
                          labelStyle: TextStyle(
                            color: mainColor,
                          )),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    //user Birthday
                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: mainColor, width: 2.0),
                          ),
                          labelText: "Birthday",
                          labelStyle: TextStyle(
                            color: mainColor,
                          )),
                      keyboardType: TextInputType.datetime,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    //user Address
                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: mainColor, width: 2.0),
                          ),
                          labelText: "Address",
                          labelStyle: TextStyle(
                            color: mainColor,
                          )),
                      keyboardType: TextInputType.streetAddress,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    //user phone Number
                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: mainColor, width: 2.0),
                          ),
                          labelText: "Phone Number",
                          labelStyle: TextStyle(
                            color: mainColor,
                          )),
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    //user E-mail
                    TextField(
                      controller: emailcontroller,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: mainColor, width: 2.0),
                          ),
                          labelText: "E-mail",
                          labelStyle: TextStyle(
                            color: mainColor,
                          )),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    //Password
                    TextField(
                      controller: passwordcontroller,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: mainColor, width: 2.0),
                          ),
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: mainColor,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              passwordVisibility
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: mainColor,
                            ),
                            iconSize: 18.0,
                            onPressed: () {
                              setState(() {
                                passwordVisibility = !passwordVisibility;
                              });
                            },
                          )),
                      obscureText: passwordVisibility,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    //Confirm Password
                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: mainColor, width: 2.0),
                          ),
                          labelText: "Confirm Password",
                          labelStyle: TextStyle(
                            color: mainColor,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              passwordVisibilityConfirm
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: mainColor,
                            ),
                            iconSize: 18.0,
                            onPressed: () {
                              setState(() {
                                passwordVisibilityConfirm =
                                    !passwordVisibilityConfirm;
                              });
                            },
                          )),
                      obscureText: passwordVisibilityConfirm,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: mainColor, width: 2.0),
                          ),
                          labelText: "Specialty",
                          labelStyle: TextStyle(
                            color: mainColor,
                          )),
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: mainColor, width: 2.0),
                          ),
                          labelText: "License Number",
                          labelStyle: TextStyle(
                            color: mainColor,
                          )),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    //Buttons
                    Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MaterialButton(
                            elevation: 0.0,
                            minWidth: 40,
                            padding:
                                EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 10.0),
                            color: Colors.white,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: mainColor),
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Text(
                              "Previous",
                              style: TextStyle(color: mainColor),
                            ),
                          ),
                          MaterialButton(
                            elevation: 0.0,
                            minWidth: 40,
                            padding:
                                EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
                            color: mainColor,
                            onPressed: () async {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content: Container(
                                        height: 170,
                                        child: Center(
                                          child: SizedBox(
                                            width: 70,
                                            height: 70,
                                            child: CircularProgressIndicator(),
                                          ),
                                        ),
                                      ),
                                    );
                                  });

                              try {
                                await FirebaseAuth.instance
                                    .createUserWithEmailAndPassword(
                                        email: emailcontroller.text.toString(),
                                        password:
                                            passwordcontroller.text.toString());

                                await FirebaseFirestore.instance
                                    .collection('Users')
                                    .doc('${emailcontroller.text}')
                                    .set({
                                  'Name': namecontroller.text.toString()
                                });

                                Navigator.pop(context);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => NavigationBar()));
                              } on FirebaseAuthException catch (e) {
                                if (e.code == 'weak-password') {
                                  Navigator.pop(context);
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          content: Container(
                                            height: 100,
                                            child: Center(
                                              child: SizedBox(
                                                width: 220,
                                                height: 70,
                                                child: Text(
                                                  'Week Password',
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 24),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      });
                                } else if (e.code == 'email-already-in-use') {
                                  Navigator.pop(context);

                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          content: Container(
                                            height: 100,
                                            child: Center(
                                              child: SizedBox(
                                                width: 220,
                                                height: 70,
                                                child: Text(
                                                  'Email Already In Use',
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 24),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      });
                                }
                              } catch (e) {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        content: Container(
                                          height: 100,
                                          child: Center(
                                            child: SizedBox(
                                              width: 220,
                                              height: 70,
                                              child: Text(
                                                'Some Thing Wrong',
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 24),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    });
                              }
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Text(
                              "Next ",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
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

/* TextField(
                decoration: InputDecoration(
                    hintText: "Specialty",
                    hintStyle: TextStyle(
                      color: TextColor,
                    )
                ),
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: 18,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "License Number",
                    hintStyle: TextStyle(
                      color: TextColor,
                    )
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 18,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "ID",
                    hintStyle: TextStyle(
                      color: TextColor,
                    )
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 18,
              ),
*/