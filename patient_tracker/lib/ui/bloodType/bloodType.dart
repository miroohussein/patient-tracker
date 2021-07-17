import 'package:flutter/material.dart';
import 'package:patient_tracker/main.dart';
import 'package:patient_tracker/ui/navigationBar/navigationBar.dart';
import 'package:patient_tracker/ui/profile/profile.dart';
import 'package:patient_tracker/jsonClass/bloodType_list.dart';

class BloodType extends StatefulWidget {
  const BloodType({Key? key}) : super(key: key);

  @override
  _BloodTypeState createState() => _BloodTypeState();
}

class _BloodTypeState extends State<BloodType> with AutomaticKeepAliveClientMixin {
  Color mainColor = Color(0xff1EB2A2);
  var _radioButtonGroupVal;
  String result = '';

  List<BloodTypeList> bloodTypeList = [
    BloodTypeList('AB+', '', ' ', 'Me'),
    BloodTypeList('AB+', 'Ahmed Mohamed', '01054986531', 'Father'),
    BloodTypeList('O+', 'Mai Ahmed', '01054986531', 'Sister'),
    BloodTypeList('A+', 'Amal Ali', '01054986531', 'Mother'),
    BloodTypeList('B+', 'Ali Ahmed', '01054986531', 'Brother'),
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: mainColor,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () => addingBloodModelSheet(context),
      ),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(
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
                            style: TextStyle(
                                color: Color(0xff707070),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
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
                                      bloodTypeList[index]
                                                  .patientRelativeType ==
                                              'Me'
                                          ? ' '
                                          : 'Name: ',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff707070),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    width: 56,
                                    height: 2,
                                    color: bloodTypeList[index]
                                                .patientRelativeType ==
                                            'Me'
                                        ? Color(0xffF2F2F7)
                                        : Color(_selectColor(
                                            bloodTypeList[index].bloodType)),
                                  ),
                                  Container(
                                    child: Text(
                                      bloodTypeList[index].patientRelativeName,
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Text(
                                      bloodTypeList[index]
                                                  .patientRelativeType ==
                                              'Me'
                                          ? ' '
                                          : 'Phone Number: ',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff707070),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    width: 56,
                                    height: 2,
                                    color: bloodTypeList[index]
                                                .patientRelativeType ==
                                            'Me'
                                        ? Color(0xffF2F2F7)
                                        : Color(_selectColor(
                                            bloodTypeList[index].bloodType)),
                                  ),
                                  Container(
                                    child: Text(
                                      bloodTypeList[index].patientPhoneNumber,
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
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

  // void addingBloodModelSheet(context){
  //   showModalBottomSheet(context: context, builder: (BuildContext bc){
  //     return SingleChildScrollView(
  //       child: Container(
  //         height: 340,
  //         width: double.infinity,
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(35),
  //         ),
  //         child: Column(
  //           children: [
  //             Container(
  //               alignment: Alignment.center,
  //               height: 55,
  //               width: double.infinity,
  //               decoration:BoxDecoration(
  //                   color: Color(0xff1EB2A2)
  //               ) ,
  //               child: Text('Blood Type', style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: 25.0,
  //                 fontWeight: FontWeight.bold
  //               ),),
  //             ),
  //             Container(
  //               margin: EdgeInsets.fromLTRB(11, 20, 11, 13),
  //               child:Column(
  //                 children: [
  //                   SizedBox(
  //                     height: 18,
  //                   ),
  //                   TextField(
  //                     decoration: InputDecoration(
  //                         focusedBorder: OutlineInputBorder(
  //                           borderSide: BorderSide(color: mainColor, width: 2.0),
  //                         ),
  //                         labelText: "Enter the Name",
  //                         labelStyle: TextStyle(
  //                           color: mainColor,
  //                         )
  //                     ),
  //                     keyboardType: TextInputType.text,
  //                   ),
  //                   SizedBox(
  //                     height: 18,
  //                   ),
  //                   TextField(
  //                     decoration: InputDecoration(
  //                         focusedBorder: OutlineInputBorder(
  //                           borderSide: BorderSide(color: mainColor, width: 2.0),
  //                         ),
  //                         labelText: "Enter Phone Number",
  //                         labelStyle: TextStyle(
  //                           color: mainColor,
  //                         )
  //                     ),
  //                     keyboardType: TextInputType.number,
  //                   ),
  //                   SizedBox(
  //                     height: 18,
  //                   ),
  //                   Text('Relative Relation', style: TextStyle(
  //                     color: Colors.black, fontSize: 12.0
  //                   ),),
  //                   Container(
  //                     width: 88,
  //                     height: 2,
  //                     decoration: BoxDecoration(
  //                       color: Color(0xff00000028)
  //                     ),
  //
  //                   ),
  //                   Container(
  //                     width: double.infinity,
  //                     child: Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceAround,
  //                       children: [
  //                         MaterialButton(
  //                           elevation: 0.0,
  //                           minWidth:40,
  //                           padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 10.0),
  //                           color: Colors.white,
  //                           onPressed: (){},
  //                           shape: RoundedRectangleBorder(
  //                               side: BorderSide(
  //                                   color: mainColor
  //                               ),
  //                               borderRadius: BorderRadius.circular(5.0)
  //                           ),
  //                           child: Text("Cancel", style: TextStyle( color: mainColor),),
  //                         ),
  //                         MaterialButton(
  //                           elevation: 0.0,
  //                           minWidth: 40,
  //                           padding: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
  //                           color: mainColor,
  //                           onPressed: (){},
  //                           shape: RoundedRectangleBorder(
  //                               borderRadius: BorderRadius.circular(5.0)
  //                           ),
  //                           child: Text("Save", style: TextStyle( color: Colors.white),),
  //                         ),
  //                       ],
  //                     ),
  //                   )
  //                 ],
  //               ) ,
  //             ),
  //           ],
  //         ),
  //       ),
  //     );
  //   });
  // }
  TextEditingController customController = TextEditingController();

  addingBloodModelSheet(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Container(
            height: 370,
            width: 302,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                AlertDialog(
                  title: Stack(
                    children:[
              Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 8,bottom: 8),
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Color(0xff1EB2A2))),
                       Center(
                         child: Text(
                          'Blood Type',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold),
                      ),
                       ), ]
                  ),
                  content: Container(
                      height: 370,
                      width: 302,
                      margin: EdgeInsets.fromLTRB(9, 20, 9, 9),
                      child: Column(children: [
                        SizedBox(
                          height: 18,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: mainColor, width: 2.0),
                              ),
                              labelText: "Enter the Name",
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
                              labelText: "Enter Phone Number",
                              labelStyle: TextStyle(
                                color: mainColor,
                              )),
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Text(
                          'Relative Relation',
                          style: TextStyle(color: Colors.black, fontSize: 12.0),
                        ),
                        Container(
                          width: 88,
                          height: 2,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                        Container(
                          child: SingleChildScrollView(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Radio(
                                          activeColor: mainColor,
                                            value: 1,
                                            groupValue: _radioButtonGroupVal,
                                            onChanged: (value) {
                                              setState(() {
                                                _radioButtonGroupVal = value;
                                              });
                                            }),
                                        Text(
                                          'The Patient',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10.0),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          activeColor: mainColor,
                                            value: 2,
                                            groupValue: _radioButtonGroupVal,
                                            onChanged: (value) {
                                              setState(() {
                                                _radioButtonGroupVal = value;
                                              });
                                            }),
                                        Text(
                                          "Father",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10.0),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Radio(
                                          activeColor: mainColor,
                                            value: 4,
                                            groupValue: _radioButtonGroupVal,
                                            onChanged: null),
                                        Text(
                                          'Brother',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 9.0),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(

                                            value: 5,
                                            groupValue: _radioButtonGroupVal,
                                            onChanged: null),
                                        Text(
                                          "Sister",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 9.0),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                            activeColor: mainColor,
                                            value: 3,
                                            groupValue: _radioButtonGroupVal,
                                            onChanged: (value) {
                                              setState(() {
                                                _radioButtonGroupVal = value;
                                              });
                                            }),
                                        Text(
                                          "Mother",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10.0),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ])),
                  actions: [
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
                            onPressed: () {
                              Navigator.of(context)
                                  .pop(customController.text.toString());
                            },
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: mainColor),
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Text(
                              "Cancel",
                              style: TextStyle(color: mainColor),
                            ),
                          ),
                          MaterialButton(
                            elevation: 0.0,
                            minWidth: 40,
                            padding:
                                EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
                            color: mainColor,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Text(
                              "Save",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        });
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
