import 'package:flutter/material.dart';
import 'package:patient_tracker/ui/Notifications/Notifications.dart';
import 'package:patient_tracker/ui/appointments/Appointments.dart';
import 'package:patient_tracker/ui/home/home.dart';
import 'package:patient_tracker/ui/profile/profile.dart';
import 'package:patient_tracker/ui/settings/settings.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar>
    with AutomaticKeepAliveClientMixin {
  List<Widget> children = <Widget>[
    HomePage(),
    notifications(),
    Profile(),
    appointments(),
    Settings(),
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
      body: children[_currentIndex],
      bottomNavigationBar: Container(
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
                    icon: Icon(Icons.more_horiz_rounded), title: Text('More'))
              ],
            ),
          )),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
