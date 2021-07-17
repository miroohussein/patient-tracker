import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patient_tracker/jsonClass/hospitsl_list.dart';
import 'package:patient_tracker/ui/icon/patient_tracker_icons.dart';
import 'package:patient_tracker/main.dart';

class HospitalPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HospitalPage();
  }
}

class _HospitalPage extends State<HospitalPage>
    with AutomaticKeepAliveClientMixin {
  Color _mainColor = Color(0xff1EB2A2);
  final List<HospetalList> hospitalList = [
    HospetalList(
        hospitalname: "Hospital Name1",
        hospitalLocation: "Location",
        hospitalPhoneNumber: "010101010101"),
    HospetalList(
        hospitalname: "Hospital Name2",
        hospitalLocation: "Location",
        hospitalPhoneNumber: "010101010101"),
    HospetalList(
        hospitalname: "Hospital Name3",
        hospitalLocation: "Location",
        hospitalPhoneNumber: "010101010101"),
    HospetalList(
        hospitalname: "Hospital Name4",
        hospitalLocation: "Location",
        hospitalPhoneNumber: "010101010101"),
    HospetalList(
        hospitalname: "Hospital Name5",
        hospitalLocation: "Location",
        hospitalPhoneNumber: "010101010101"),
    HospetalList(
        hospitalname: "Hospital Name6",
        hospitalLocation: "Location",
        hospitalPhoneNumber: "010101010101"),
    HospetalList(
        hospitalname: "Hospital Name7",
        hospitalLocation: "Location",
        hospitalPhoneNumber: "010101010101"),
    HospetalList(
        hospitalname: "Hospital Name8",
        hospitalLocation: "Location",
        hospitalPhoneNumber: "010101010101"),
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PatientTracker()),
              );
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.red.shade800,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.red.shade800,
              )),
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: hospitalList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Stack(children: [
                Container(
                  height: 130,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xff5db0c2),
                        width: 0.5,
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(3, 1, 3, 1),
                    elevation: 1,
                    color: Colors.white,
                    child: ListTile(
                      // leading: CircleAvatar(
                      //   child: Container(
                      //     child: Image.asset("assets/images/hospital.png",fit: BoxFit.cover),
                      //   ),
                      //   backgroundColor: Colors.white,
                      //   radius: 30,
                      // ),
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(100, 10, 0, 0),
                        child: Text(
                          hospitalList[index].hospitalname,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff099BC3)),
                        ),
                      ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(100, 3, 5, 3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.red.shade800,
                                ),
                                Text(
                                  hospitalList[index].hospitalLocation,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(100, 3, 5, 3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.call, color: Color(0xff099BC3)),
                                Text(
                                  hospitalList[index].hospitalPhoneNumber,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(3, 10, 3, 5),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      "assets/images/hospital.png",
                      fit: BoxFit.cover,
                    )),
                // Container(
                //   height: 2,
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //     color: Color(0xff099BC3),
                //   ),
                // )
              ]),
            );
          },
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
