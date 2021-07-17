import 'package:flutter/material.dart';
import 'package:patient_tracker/ui/bloodType/bloodType.dart';
import 'package:patient_tracker/ui/editProfile/editProfile.dart';
import 'package:patient_tracker/ui/home/home.dart';
import 'package:patient_tracker/ui/profile/profile.dart';
import 'package:patient_tracker/ui/sign_up/patient_sign_up.dart';

// class GlobalNavigationBar extends StatefulWidget{
//   @override
//   _GlobalNavigationBar createState() => _GlobalNavigationBar();
//   }
class GlobalNavigationBar {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    _currentIndex = index;
  }

  List<Widget> children = <Widget>[
    HomePage(),
    //DoctorSignUp(),
    Profile(),
    PatientSignUp(),
    BloodType(),
    // Settings(),
    //  HospitalPage(),
    EditProfile(),
  ];

  void bottomNavigation(int pageIndex) {
    _currentIndex = pageIndex;
  }

  @override
  Widget globalNavigationBar() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
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
        ));
  }
}
