import 'package:flutter/material.dart';
import 'package:patient_tracker/ui/hospital_page/hopital_page.dart';


class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int _currentIndex = 0;
  final List<Widget> _children=[];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HospitalPage()),
              );
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        centerTitle: true,
        backgroundColor: Color(0xff1EB2A2),
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.white, fontSize: 25.0),
        ),
      ),
      // bottomNavigationBar: Container(
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.only(
      //           topRight: Radius.circular(30),
      //           topLeft: Radius.circular(30)),
      //       boxShadow: [
      //         BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
      //       ],
      //     ),
      //     child: ClipRRect(
      //       borderRadius: BorderRadius.only(
      //         topLeft: Radius.circular(30.0),
      //         topRight: Radius.circular(30.0),
      //       ),
      //       child: BottomNavigationBar(
      //         unselectedItemColor: Colors.grey.shade600,
      //         selectedItemColor: Color(0xff1EB2A2),
      //         onTap: onTabTapped,
      //         currentIndex: _currentIndex,
      //         // this will be set when a new tab is tapped
      //         items: [
      //           BottomNavigationBarItem(
      //             icon: new Icon(Icons.home),
      //             title: new Text('Home'),
      //           ),
      //           BottomNavigationBarItem(
      //             icon: new Icon(Icons.notifications),
      //             title: new Text('Messages'),
      //           ),
      //           BottomNavigationBarItem(
      //               icon: Icon(Icons.person), title: Text('Profile')),
      //           BottomNavigationBarItem(
      //               icon: Icon(Icons.paste_sharp), title: Text('Appoinments')),
      //           BottomNavigationBarItem(
      //               icon: Icon(Icons.more_horiz), title: Text('Profile'))
      //         ],
      //       ),
      //     )),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          // height: double.infinity,
          color: Color(0xffF2F2F7),
          child: Container(
            margin: EdgeInsets.fromLTRB(9, 10, 9, 10),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
              child: Column(
                children: [
                  FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.0),
                      side: BorderSide(
                        color: Color(0xff707070),
                        width: 1.0,
                      ),
                    ),
                    // Button(
                    // style: ButtonStyle(
                    // backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    //),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.account_circle_outlined,
                            color: Color(0xff1EB2A2),
                            size: 27.0,
                          ),
                          SizedBox(
                            width: 9.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 0, 8, 0),
                            child: Text('Edit Profile',
                                style: TextStyle(
                                    color: Color(0xff707070), fontSize: 18)),
                          ),
                          SizedBox(
                            width: 115.0,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xff1EB2A2),
                            size: 25.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.0),
                      side: BorderSide(
                        color: Color(0xff707070),
                        width: 1.0,
                      ),
                    ),
                    // Button(
                    // style: ButtonStyle(
                    // backgroundColor: MaterialStateProperty.all<Color>(Colors.white),

                    //),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.admin_panel_settings_sharp,
                            color: Color(0xff1EB2A2),
                            size: 27.0,
                          ),
                          SizedBox(
                            width: 9.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 0, 8, 0),
                            child: Text('Change Password',
                                style: TextStyle(
                                    color: Color(0xff707070), fontSize: 18)),
                          ),
                          SizedBox(
                            width: 60.0,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xff1EB2A2),
                            size: 25.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.0),
                      side: BorderSide(
                        color: Color(0xff707070),
                        width: 1.0,
                      ),
                    ),
                    // Button(
                    // style: ButtonStyle(
                    // backgroundColor: MaterialStateProperty.all<Color>(Colors.white),

                    //),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.paste_sharp,
                            color: Color(0xff1EB2A2),
                            size: 27.0,
                          ),
                          SizedBox(
                            width: 9.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 0, 8, 0),
                            child: Text('Insurance',
                                style: TextStyle(
                                    color: Color(0xff707070), fontSize: 18)),
                          ),
                          SizedBox(
                            width: 115.0,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xff1EB2A2),
                            size: 25.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 230.0,
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    child: Image.asset(
                      "assets/images/logo.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  /* Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xff707070),
                        width: 0.5,
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(3, 1, 3, 1),
                    elevation: 1,
                    color: Colors.white,
                    child: ListTile(
                      title: Padding(
                        padding:EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text("Edit Profile", style: TextStyle(color: Color(0xff707070) ),),
                      ),

                    ),
                  )*/
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
