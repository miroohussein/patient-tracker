import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:patient_tracker/pojoLists/cardDecoration.dart';
import 'package:patient_tracker/ui/icon/patient_tracker_icons.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _mainColor = Color(0xff1EB2A2);
  Color _secondary = Colors.white10;

  final List<CardDecoration> categoryList = [
    //blue - child
    CardDecoration(PatientTracker.group_163, "child", 0xff0D5ADF, 0xffe6f2ff),
    //red - Brain&Nerves
    CardDecoration(Icons.category, "Brain&Nerves", 0xffEF1027, 0xfffde7e9),
    //green - Bones
    CardDecoration(Icons.ac_unit_sharp, "Bones", 0xff1EB2A2, 0xffe9fbf9),
    //red - Cardiac
    CardDecoration(Icons.category, "Cardiac", 0xffEF1027, 0xfffde7e9),
    //green - Gynaecology & Infertility
    CardDecoration(Icons.ac_unit_sharp, "Gynaecology & Infertility", 0xff1EB2A2,
        0xffe9fbf9),
    //blue - Dental
    CardDecoration(Icons.category, "Dental", 0xff0D5ADF, 0xffe6f2ff),
    //blue - Dermatology
    CardDecoration(Icons.ac_unit_sharp, "Dermatology", 0xff0D5ADF, 0xffe6f2ff),
    //red - Ear,Nose & Throat
    CardDecoration(PatientTracker.brain_neuron_intelligence_mind, "Ear,Nose & Throat", 0xffEF1027, 0xfffde7e9),
    //green - Mental & Emotional
    CardDecoration(
        Icons.ac_unit_sharp, "Mental & Emotional", 0xff1EB2A2, 0xffe9fbf9),
  ];

  Widget build(BuildContext context) {
    String _name = 'Mohammed';
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          color: Color(0xffF2F2F7),
          padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Hello and name
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Hello, ",
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        _name,
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    "How're you today ",
                    style: TextStyle(
                        color: Color(0xff707070),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              //Search
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.white),
                margin: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide(color: Colors.black45, width: 1.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide(color: _mainColor, width: 2.0),
                    ),
                    hintText: 'search',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: _mainColor,
                      ),
                    ),
                  ),
                  textInputAction: TextInputAction.done,
                ),
              ),
              SizedBox(
                height: 30,
              ),

              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Categories',
                    style: TextStyle(color: Colors.black, fontSize: 23),
                  )),

              Expanded(
                child: GridView.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 16.0,
                    crossAxisSpacing: 16.0,
                    padding: EdgeInsets.all(16.0),
                    children: List.generate(categoryList.length, (index) {
                      return Card(
                        color: Color(categoryList[index].cardColor),
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Container(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              categoryList[index].icon,
                              color: Color(categoryList[index].color),
                            ),
                            Text(
                              "${categoryList[index].textData}",
                              style: TextStyle(
                                  color: Color(categoryList[index].color),
                                  fontSize: 12.0),
                            ),
                          ],
                        )),
                      );
                    })),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                padding: EdgeInsets.fromLTRB(17.0, 15.0, 17.0, 15.0),
                child: Text(
                  'Check our new Services',
                  style: TextStyle(fontSize: 20),
                ),
                color: Color(0xff34CBB2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0)),
                onPressed: () {},
                textColor: Colors.white70,
              ),

              // StaggeredGridView.count(
              //     crossAxisCount:  3,
              //     crossAxisSpacing: 15.0,
              //     mainAxisSpacing: 15.0,
              //   padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
              //   children: [
              //     //blue - child
              //     categoryItem(Icons.ac_unit_sharp,"child", 0xff0D5ADF),
              //     //red - Brain&Nerves
              //     categoryItem(Icons.ac_unit_sharp,"Brain&Nerves", 0xffEF1027),
              //     //green - Bones
              //     categoryItem(Icons.ac_unit_sharp,"Bones", 0xff1EB2A2),
              //     //red - Cardiac
              //     categoryItem(Icons.ac_unit_sharp,"Cardiac", 0xffEF1027),
              //     //green - Gynaecology & Infertility
              //     categoryItem(Icons.ac_unit_sharp,"Gynaecology & Infertility", 0xff1EB2A2),
              //     //blue - Dental
              //     categoryItem(Icons.ac_unit_sharp,"Dental", 0xff0D5ADF),
              //     //blue - Dermatology
              //     categoryItem(Icons.ac_unit_sharp,"Dermatology", 0xff0D5ADF),
              //     //red - Ear,Nose & Throat
              //     categoryItem(Icons.ac_unit_sharp,"Ear,Nose & Throat", 0xffEF1027),
              //     //green - Mental & Emotional
              //     categoryItem(Icons.ac_unit_sharp,"Mental & Emotional", 0xff1EB2A2),
              //   ],
              //   staggeredTiles: [
              //     StaggeredTile.extent(1, 100.0),
              //     StaggeredTile.extent(1, 100.0),
              //     StaggeredTile.extent(1, 100.0),
              //     StaggeredTile.extent(1, 100.0),
              //     StaggeredTile.extent(1, 100.0),
              //     StaggeredTile.extent(1, 100.0),
              //     StaggeredTile.extent(1, 100.0),
              //     StaggeredTile.extent(1, 100.0),
              //     StaggeredTile.extent(1, 100.0),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}


