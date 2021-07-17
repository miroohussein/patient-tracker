import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patient_tracker/main.dart';
import 'package:patient_tracker/pojoLists/cardDecoration.dart';
import 'package:patient_tracker/ui/MedicalHistory/MedicalHistory.dart';
import 'package:patient_tracker/ui/New%20services/new_services.dart';
import 'package:patient_tracker/ui/bloodType/bloodType.dart';
import 'package:patient_tracker/ui/editProfile/editProfile.dart';
import 'package:patient_tracker/ui/home/home.dart';
import 'package:patient_tracker/ui/hospital_page/hopital_page.dart';
import 'package:patient_tracker/ui/medications/medications.dart';
import 'package:patient_tracker/ui/sign_up/doctor_sign_up.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with AutomaticKeepAliveClientMixin{
  String patientName = 'Mohammed';
  Color mainColor = Color(0xff34CBB2);
  List<CardDecoration> cardDecorationList = [
    CardDecoration(Icons.perm_contact_cal_outlined, 'Personal Data', 0xff242A38,
        0xffFDFDFD),
    CardDecoration(Icons.category, 'Blood Type', 0xff242A38, 0xffFDFDFD),
    CardDecoration(Icons.medical_services_outlined, 'Medical History',
        0xff242A38, 0xffFDFDFD),
    CardDecoration(
        Icons.add_business_outlined, 'Medications', 0xff242A38, 0xffFDFDFD),
    CardDecoration(Icons.paste_sharp, 'Tests Results', 0xff242A38, 0xffFDFDFD),
    CardDecoration(Icons.add, 'More', 0xff34CBB2, 0xffE5E5EA),
  ];

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

  int _currentIndex = 1;
  PageController _pageController = PageController();

  //Add the pages in Navigation Bar

  void onTabTapped(int index) {

    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(0, 70, 0, 30),
          decoration: BoxDecoration(
            color: Color(0xffF2F2F7),
          ),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(alignment: Alignment.center, children: [
                Container(
                  width: 90.0,
                  height: 90.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          topLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50)),
                      color: mainColor),
                ),
                Container(
                  child: Text(
                    '${patientName[0]}',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ]),
              SizedBox(
                height: 8.0,
              ),
              Container(
                child: Text(
                  '$patientName',
                  style: TextStyle(color: Colors.black, fontSize: 28),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: GridView.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 0.0,
                    crossAxisSpacing: 0.0,
                    // padding: EdgeInsets.all(16.0),
                    children: List.generate(cardDecorationList.length, (index) {
                      return Card(
                        color: Color(cardDecorationList[index].cardColor),
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xffC0C0C7),
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        child: ListTile(
                          title: Container(
                              width: 135,
                              height: 149,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    cardDecorationList[index].icon,
                                    color:
                                        Color(cardDecorationList[index].color),
                                    size: 50,
                                  ),
                                  SizedBox(
                                    height: 21,
                                  ),
                                  Text(
                                    "${cardDecorationList[index].textData}",
                                    style: TextStyle(
                                        color: Color(0xff707070),
                                        fontSize: 12.0),
                                  ),

                                ],

                              )),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => pageNavigate(index)),
                            );
                          },
                        ),
                      );
                    })),

              ),
              // SizedBox(
              //   height: 30,
              // ),
              // Container(
              //   width: 150,
              //   height: 150,
              //   margin: EdgeInsets.only(
              //     top: 70.8,
              //   ),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Image.asset(
              //         "assets/images/logo.png",
              //         fit: BoxFit.cover,
              //       ),
              //     ],
              //   ),
              // ),
              // Expanded(
              //   child: GridView(
              //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              //       maxCrossAxisExtent: 125,
              //       childAspectRatio: 1,
              //       crossAxisSpacing: 0,
              //       mainAxisSpacing: 0,
              //     ),
              //     children: [
              //       Container(
              //         decoration: BoxDecoration(),
              //       )
              //     ],
              //   ),
              // )
            ],
          ),
        ));
  }

  Widget pageNavigate(int index) {
    Widget page = PatientTracker();
    if (index == 0) {
      page = EditProfile();
    } else if (index == 1) {
      page = BloodType();
    } else if (index == 2) {
      page = MedicalHistory();
    } else if (index == 3) {
      page = Medication();
    } else if (index == 4) {
      page = HospitalPage();
    } else if (index == 5) {
      page = UpcomingServices();
    }
    return page;
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
