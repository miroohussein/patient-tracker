import 'package:flutter/material.dart';
import 'package:patient_tracker/ui/bloodType/bloodType.dart';
import 'package:patient_tracker/ui/editProfile/editProfile.dart';
import 'package:patient_tracker/ui/profile/profile.dart';
import 'package:patient_tracker/ui/sign_up/patient_sign_up.dart';

class CostumeNavigationBar extends StatefulWidget {
  const CostumeNavigationBar({Key? key}) : super(key: key);

  @override
  _CostumeNavigationBarState createState() => _CostumeNavigationBarState();
}

class _CostumeNavigationBarState extends State<CostumeNavigationBar> {

  Color mainColor = Color(0xff1EB2A2);
  int currentTap=0;

  List<Widget> children = <Widget>[
    // HomePage(),
    //DoctorSignUp(),
    Profile(),
    PatientSignUp(),
    BloodType(),
    //  HospitalPage(),
    EditProfile(),
    // Settings(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Profile();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child:currentScreen ,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: mainColor,
       child: Icon(Icons.home_outlined),
        onPressed: (){
          Navigator.pop(
            context,
            MaterialPageRoute(builder: (context) => Profile()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                      onPressed: (){
                      setState(() {
                        currentScreen = Profile();
                        currentTap=0;
                      });
                      },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon( currentTap==0? Icons.person: Icons.person_outlined,
                          color: currentTap==0? mainColor : Colors.grey,
                        ),
                        Text(
                          currentTap== 0 ? 'Profile': ' ',
                          style: TextStyle( color: currentTap==0? mainColor : Colors.grey,),
                        )
                      ],
                    ),
                      ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen =  PatientSignUp();
                        currentTap=1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(currentTap==1? Icons.notifications :Icons.notifications_none,
                          color: currentTap==1? mainColor : Colors.grey,
                        ),
                        Text(
                          currentTap== 1? 'Notification': ' ',
                          style: TextStyle( color: currentTap==1? mainColor : Colors.grey,),
                        )
                      ],
                    ),
                  ),

                ],

              ),
              Row(
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = Profile();
                        currentTap=2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(currentTap==2? Icons.paste :Icons.content_paste,
                          color: currentTap==2? mainColor : Colors.grey,
                        ),
                        Text(
                          currentTap== 2? 'Appointment': ' ',
                          style: TextStyle( color: currentTap==2? mainColor : Colors.grey,),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen =  PatientSignUp();
                        currentTap=3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(currentTap==3? Icons.more_horiz :Icons.more_horiz_rounded,
                          color: currentTap==3? mainColor : Colors.grey,
                        ),
                        Text(
                          currentTap== 3? 'Settings': ' ',
                          style: TextStyle( color: currentTap==3? mainColor : Colors.grey,),
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
