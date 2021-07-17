import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patient_tracker/ui/hospital_page/hopital_page.dart';
import 'package:patient_tracker/ui/profile/profile.dart';

class dr_page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return dr_pageState();
  }
}

class dr_pageState extends State<dr_page> {
  Color mainColor = Color.fromRGBO(19, 138, 222, 1);
  int index = 0;
  final dr_page_list1 = ["Tue 1/6", "Mon 31/5", "Wed 2/6", "Thurs 3/6"];
  final dr_page_list2 = [
    "From:To",
    "10pm:11pm",
    "10pm:11pm",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F7),
      appBar: AppBar(
        backgroundColor: Color(0xFF1EB2B2),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => HospitalPage()),
              );
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 17, 0, 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 0, 100),
                  child: Container(
                      height: 135,
                      width: 135,
                      child: Image.asset(
                        "assets/images/dr.png",
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Doctor name",
                        style: TextStyle(
                            color: mainColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: RatingBar.builder(
                            itemSize: 14,
                            textDirection: TextDirection.ltr,
                            initialRating: 5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (double value) {},
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 5, 3),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.attach_money,
                              color: Colors.green,
                              size: 20,
                            ),
                            Text("200 L.E"),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 5, 3),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                              size: 20,
                            ),
                            Text("Location"),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 5, 3),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.watch_later_outlined,
                              color: mainColor,
                              size: 20,
                            ),
                            Text("Waiting time : 11 min"),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 5, 3),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.call,
                              color: Colors.green,
                              size: 20,
                            ),
                            Text("11977-cost of regular call"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(45, 5, 5, 5),
                  child: new_container1(),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                  child: new_container2(),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(45, 5, 5, 5),
                      child: new_container3(),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                      child: new_container4(),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Stack new_container1() {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 116,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              "from 3pm:to 9pm",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            )),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              "Tue 1/6",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            )),
          ),
          height: 42,
          width: 116,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Color(0xFF1EB2A2)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 112, 50, 3),
          child: Container(
            height: 42,
            width: 116,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Colors.red,
            ),
            child: Center(
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "book",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ),
        ),
      ],
    );
  }

  Stack new_container2() {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 116,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              "from 3pm:to 9pm",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            )),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              "Mon 31/6",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            )),
          ),
          height: 42,
          width: 116,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Color(0xFF1EB2A2)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 112, 50, 3),
          child: Container(
            height: 42,
            width: 116,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Colors.red,
            ),
            child: Center(
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "book",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ),
        ),
      ],
    );
  }

  Stack new_container3() {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 116,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              "from 8am:to 2pm",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            )),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              "Sat 4/4",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            )),
          ),
          height: 42,
          width: 116,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Color(0xFF1EB2A2)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 112, 50, 3),
          child: Container(
            height: 42,
            width: 116,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Colors.red,
            ),
            child: Center(
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "book",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ),
        ),
      ],
    );
  }

  Stack new_container4() {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 116,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              "from 8am:to 2pm",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              "Tue 1/6",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            )),
          ),
          height: 42,
          width: 116,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Color(0xFF1EB2A2)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 112, 50, 3),
          child: Container(
              height: 42,
              width: 116,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.grey,
              ),
              child: Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Complete",
                      style: TextStyle(color: Colors.white),
                    )),
              )),
        ),
      ],
    );
  }
}
