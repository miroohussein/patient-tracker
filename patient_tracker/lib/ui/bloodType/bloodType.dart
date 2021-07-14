import 'package:flutter/material.dart';
import 'package:patient_tracker/ui/profile/profile.dart';
import 'package:patient_tracker/jsonClass/bloodType_list.dart';

class BloodType extends StatefulWidget {
  const BloodType({Key? key}) : super(key: key);

  @override
  _BloodTypeState createState() => _BloodTypeState();
}

class _BloodTypeState extends State<BloodType> {
  List<BloodTypeList> bloodTypeList = [
    BloodTypeList('AB+', '', ' ', 'Me'),
    BloodTypeList('AB+', 'Ahmed Mohamed', '01054986531', 'Father'),
    BloodTypeList('O+', 'Mai Ahmed', '01054986531', 'Sister'),
    BloodTypeList('A+', 'Amal Ali', '01054986531', 'Mother'),
    BloodTypeList('B+', 'Ali Ahmed', '01054986531', 'Brother'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: Text(
          'Blood Type',
          style: TextStyle(color: Colors.white, fontSize: 25.0),
        ),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: bloodTypeList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.fromLTRB(8, 5, 16, 0),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Container(
                      color: Colors.white,
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          //margin: EdgeInsets.fromLTRB(0, 12, 29, 24),
                          child: Text(
                            bloodTypeList[index].patientRelativeType,
                            style:
                                TextStyle(color: Color(0xff707070), fontSize: 15,fontWeight:FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Card(
                          elevation: 0.0,
                          color: Color(0xffF2F2F7),
                          child: ListTile(
                            title: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                bloodTypeList[index].bloodType,
                                style: TextStyle(
                                    color: Color(_selectColor(
                                        bloodTypeList[index].bloodType)),
                                    fontSize: 35),
                              ),
                            ),
                            subtitle: Container(
                              alignment: Alignment.topRight,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                     bloodTypeList[index].patientRelativeType=='Me'? ' ': 'Name: ',
                                      style: TextStyle(
                                          fontSize: 10, color: Color(0xff707070),fontWeight:FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    width: 56,
                                    height: 2,
                                    color: bloodTypeList[index].patientRelativeType =='Me'? Color(0xffF2F2F7) : Color(_selectColor(
                                        bloodTypeList[index].bloodType)),
                                  ),
                                  Container(
                                    child: Text(
                                      bloodTypeList[index].patientRelativeName,
                                      style: TextStyle(
                                          fontSize:10 , color:Colors.black,fontWeight:FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Text(
                                      bloodTypeList[index].patientRelativeType=='Me'? ' ':'Phone Number: ',
                                      style: TextStyle(
                                          fontSize: 10, color: Color(0xff707070),fontWeight:FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    width: 56,
                                    height: 2,
                                    color:bloodTypeList[index].patientRelativeType =='Me'? Color(0xffF2F2F7) : Color(_selectColor(
                                        bloodTypeList[index].bloodType)),
                                  ),
                                  Container(
                                    child: Text(
                                      bloodTypeList[index].patientPhoneNumber,
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.black,fontWeight:FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30.5),
                      alignment: Alignment.topLeft,
                      width: 6,
                      height: 111,
                      decoration: BoxDecoration(
                        color:
                            Color(_selectColor(bloodTypeList[index].bloodType)),
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }

  int _selectColor(String blood) {
    int color = 0xff1EB2A2;
    if (blood == 'AB+' || blood == 'ab+' || blood == 'AB-' || blood == 'ab-') {
      color = 0xffEF1027;
    } else if (blood == 'O+' ||
        blood == 'o+' ||
        blood == 'O-' ||
        blood == 'o-') {
      color = 0xff34CBB2;
    } else if (blood == 'A+' ||
        blood == 'a+' ||
        blood == 'A-' ||
        blood == 'a-') {
      color = 0xff0D5ADF;
    } else if (blood == 'B+' ||
        blood == 'b+' ||
        blood == 'B-' ||
        blood == 'b-') {
      color = 0xff4d4d4d;
    }
    return color;
  }
}
