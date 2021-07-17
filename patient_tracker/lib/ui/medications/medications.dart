import 'package:flutter/material.dart';
import 'package:patient_tracker/jsonClass/medication_List.dart';
import 'package:patient_tracker/main.dart';
import 'package:patient_tracker/ui/profile/profile.dart';

class Medication extends StatefulWidget {
  const Medication({Key? key}) : super(key: key);

  @override
  _MedicationState createState() => _MedicationState();
}

class _MedicationState extends State<Medication> with AutomaticKeepAliveClientMixin {
  Color mainColor = Color(0xff1EB2A2);
  var _radioButtonGroupVal;
  String result = '';

  List<MedcationList> meditaions = [
   MedcationList("Dental","medicationName", "medicationDose"),
    MedcationList("child","medicationName", "medicationDose"),
    MedcationList("Bones","medicationName", "medicationDose"),
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
          'Medications',
          style: TextStyle(color: Colors.white, fontSize: 25.0),
        ),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: meditaions.length,
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
                            meditaions[index].specialty,
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
                            subtitle: Container(
                              // alignment: Alignment.topRight,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'Name of the medicine: ',
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Color(0xff707070),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    width: 161,
                                    height: 2,
                                    color: Color(0xff1EB2A2),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Text(
                                      meditaions[index].medicationName,
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Text(
                                     'Medicine Dose: ',
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Color(0xff707070),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    width: 121,
                                    height: 2,
                                    color:Color(0xff1EB2A2) ,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Text(
                                      meditaions[index].medicationDose,
                                      style: TextStyle(
                                          fontSize: 17,
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
                      height: 120,
                      decoration: BoxDecoration(
                        color:Color(0xffEF1027),
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }

  TextEditingController customController = TextEditingController();

  addingBloodModelSheet(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                AlertDialog(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  title: Stack(
                      children:[
                        Text(
                          'Medications',
                          style: TextStyle(
                              color: Color(0xff1EB2A2),
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold),
                        ), ]
                  ),
                  content: Container(
                      height: 209,
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
                              labelText: "Name of the Medicine",
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
                              labelText: "Medicine Dose",
                              labelStyle: TextStyle(
                                color: mainColor,
                              )),
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: 18,
                        ),

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