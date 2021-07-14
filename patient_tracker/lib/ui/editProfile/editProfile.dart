import 'package:flutter/material.dart';
import 'package:patient_tracker/jsonClass/patientInformation.dart';
import 'package:patient_tracker/ui/profile/profile.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  Color mainColor = Color(0xff34CBB2);
  Color darkHintTextColor = Colors.white;
  bool passwordVisibility = true;
  bool passwordVisibilityConfirm = true;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile', style: TextStyle(color: Colors.white,fontSize: 25.0), ),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        centerTitle: true,
        backgroundColor: Color(0xff1EB2A2),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                    Container(
                      alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                              text: 'Full Name',
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
                              children: [
                                TextSpan(
                                    text: ' *',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14))
                              ]),
                        ),
                        // Text("Full Name",
                        //   style: TextStyle(
                        //       color: Colors.black,
                        //       fontSize: 14,
                        //       fontWeight:FontWeight.bold),)
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: mainColor, width: 2.0),
                          ),
                          hintText: _patientInformation.fullName,
                          hintStyle: TextStyle(fontSize: 18.0 , color: Color(0xff707070)),
                          ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    //user ID
                    Container(alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                              text: 'ID',
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
                              children: [
                                TextSpan(
                                    text: ' *',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14))
                              ]),
                        ),
                        //Text("ID",style: TextStyle(color: Colors.black,fontSize: 14, fontWeight: FontWeight.bold),)
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: mainColor, width: 2.0),
                          ),
                          hintText: _patientInformation.id,
                          hintStyle: TextStyle(fontSize: 18.0 , color: Color(0xff707070)),
                          ),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    //user Birthday
                    Container(
                        alignment:Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                              text: 'Birthday',
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
                              children: [
                                TextSpan(
                                    text: ' *',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14))
                              ]),
                        ),
                        //Text("Birthday",style: TextStyle(color: Colors.black,fontSize: 14, fontWeight: FontWeight.bold),)
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: mainColor, width: 2.0),
                          ),
                          hintText: _patientInformation.birthday,
                          hintStyle: TextStyle(fontSize: 18.0 , color: Color(0xff707070)),
                          ),
                      keyboardType: TextInputType.datetime,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    //user Address
                    Container(alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                              text: 'Address',
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
                              children: [
                                TextSpan(
                                    text: ' *',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14))
                              ]),
                        ),
                        //Text("Address",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),)
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: mainColor, width: 2.0),
                          ),
                          hintText: _patientInformation.address,
                          hintStyle: TextStyle(fontSize: 18.0 , color: Color(0xff707070)),
                         ),
                      keyboardType: TextInputType.streetAddress,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    //user phone Number
                    Container(alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                              text: 'Phone Number',
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
                              children: [
                                TextSpan(
                                    text: ' *',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14))
                              ]),
                        ),
                        //Text("Phone Number",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),)
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: mainColor, width: 2.0),
                          ),
                          hintText: _patientInformation.phoneNumber,
                          hintStyle: TextStyle(fontSize: 18.0 , color: Color(0xff707070)),
                         ),
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Container(alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                              text: 'E-mail',
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
                              children: [
                                TextSpan(
                                    text: ' *',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14))
                              ]),
                        ),
                        //Text("E-mail",style: TextStyle(color: Colors.black,fontSize: 14, fontWeight: FontWeight.bold),)
                    ),
                    SizedBox(
                      height: 16
                    ),
                    //user E-mail
                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: mainColor, width: 2.0),
                          ),
                          hintText: _patientInformation.email,
                          hintStyle: TextStyle(fontSize: 18.0 , color: Color(0xff707070)),
                         ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    //Gender
                    SizedBox(
                      height: 18,
                    ),
                    Container(alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(
                            text: 'Gender',
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
                            children: [
                              TextSpan(
                                  text: ' *',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14))
                            ]),
                      ),
                      //Text("E-mail",style: TextStyle(color: Colors.black,fontSize: 14, fontWeight: FontWeight.bold),)
                    ),
                    SizedBox(
                        height: 16
                    ),
                    //user E-mail
                    TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: mainColor, width: 2.0),
                        ),
                        hintText: _patientInformation.gender,
                        hintStyle: TextStyle(fontSize: 18.0 , color: Color(0xff707070)),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(
                      height: 18,
                    ),

                    Container(
                        child: Column(
                          children: [
                            Text('Change Password',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0
                            ),),
                            Container(
                              height: 4,
                              width: 124,
                              color: Color(0xffEF1027),
                            )
                          ],
                        )),
                    SizedBox(
                      height: 18,
                    ),
                    //Password
                    TextField(
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
                    //New Password
                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: mainColor, width: 2.0),
                          ),
                          labelText: "New Password",
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
                    //Buttons
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // MaterialButton(
                          //   elevation: 0.0,
                          //   color: Colors.white,
                          //   onPressed: () {},
                          //   padding:
                          //       EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 10.0),
                          //   shape: RoundedRectangleBorder(
                          //     side: BorderSide(color: mainColor),
                          //     borderRadius: BorderRadius.circular(5.0),
                          //   ),
                          //   child: Text(
                          //     "Previous",
                          //     style: TextStyle(color: mainColor),
                          //   ),
                          // ),
                          MaterialButton(
                            elevation: 0.0,
                            padding:
                                EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
                            color: mainColor,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Text(
                              "Save",
                              style: TextStyle(color: Colors.white),
                            ),
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
  PatientInformation _patientInformation = new PatientInformation('Mohammed', '10000258963', '9/9/187', 'Mansoura', '0105498651', "Mohammed99@gmail.com", "", 'Male');
}
