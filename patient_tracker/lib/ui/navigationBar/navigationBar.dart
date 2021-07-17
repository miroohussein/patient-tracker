import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:patient_tracker/ui/bloodType/bloodType.dart';
import 'package:patient_tracker/ui/editProfile/editProfile.dart';
import 'package:patient_tracker/ui/home/home.dart';
import 'package:patient_tracker/ui/hospital_page/hopital_page.dart';
import 'package:patient_tracker/ui/logo/logo.dart';
import 'package:patient_tracker/ui/profile/profile.dart';
import 'package:patient_tracker/ui/settings/settings.dart';
import 'package:patient_tracker/ui/sign_up/doctor_sign_up.dart';
import 'package:patient_tracker/ui/sign_up/patient_sign_up.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> with AutomaticKeepAliveClientMixin {
  List<Widget> children=<Widget>[
    HomePage(),
    DoctorSignUp(),
    Profile(),
    //PatientSignUp(),
    BloodType(),
    // Settings(),
    //  HospitalPage(),
    EditProfile(),
  ];

  int _currentIndex = 0;
  //Add the pages in Navigation Bar
  void onTabTapped(int index) {

    setState(() {
      _currentIndex = index;
    });
  }
  @override
   Widget build(BuildContext context) {
super.build(context);
    return Scaffold(
        body:  children[_currentIndex],
        // _children[_currentIndex],
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                unselectedItemColor: Colors.grey.shade600,
                selectedItemColor: Color(0xff1EB2A2),
                type: BottomNavigationBarType.shifting,
                onTap: onTabTapped,
                currentIndex: _currentIndex,
                // this will be set when a new tab is tapped
                items: [
                  BottomNavigationBarItem(
                    icon: new Icon(Icons.home),
                    title: new Text('Home'),
                  ),
                  BottomNavigationBarItem(
                    icon: new Icon(Icons.notifications),
                    title: new Text('Notifications'),
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), title: Text('Profile')),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.paste_sharp), title: Text('Appointments')),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.logout), title: Text('Log Out'))
                ],
              ),
            )),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  // Widget getBody(int currentIndex) {
  //
  //   switch(currentIndex){
  //     case 0:
  //       return children[0];
  //     case 1:
  //       return children[1];
  //     case 2:
  //       return children[2];
  //     case 3:
  //     return children[3];
  //   }
  // }
}


