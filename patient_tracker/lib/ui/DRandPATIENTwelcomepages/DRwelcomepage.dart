import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patient_tracker/ui/Sign_inPAGE/sign_in.dart';
import 'package:patient_tracker/ui/sign_up/doctor_sign_up.dart';

class DRwelcomepage extends StatelessWidget {
  Color mainColor = Color.fromRGBO(19, 138, 222, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF1EB2B2),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.asset("assets/images/logo.png", width: 200, height: 200),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      " This is patient tracker app, WELCOME!",
                      style: TextStyle(
                        color: mainColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 100),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(5, 5, 5, 1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Image.asset(
                            "assets/images/doctorr.png",
                            width: 170,
                            height: 320,
                          ),
                          Container(
                            width: 120,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                  colors: [Colors.greenAccent, Colors.blue]),
                            ),
                            child: Center(
                              child: Container(
                                child: MaterialButton(
                                    padding:
                                        EdgeInsets.fromLTRB(20, 10, 15, 15),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DoctorSignUp()));
                                    },
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text(
                                      "Sign up",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                            ),
                          ),
                          Center(
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(50, 5, 0, 5),
                                  child: Text(
                                    "Already have an account?",
                                    style: TextStyle(color: Colors.teal),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 50, 8),
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => sign_in()),
                                        );
                                      },
                                      child: Text("Sign in")),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
