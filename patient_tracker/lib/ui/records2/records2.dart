

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:grouped_list/grouped_list.dart';
// import 'package:patient_tracker/ui/pojooo/pj_records.dart';
//
//
//
//
//
// class recordss extends StatefulWidget {
//   @override
//   _recordssState createState() => _recordssState();
// }
//
// class _recordssState extends State<recordss> {
//  List _data=[
//    {'patient name':'mohammed ali',
//      'modifying':'modified on 3/3/2021'
//    },
//    {'patient name':'mohammed ali',
//      'modifying':'modified on 3/3/2021'
//    },
//
//
//  ];
//
//   Color mainColor =Color(0xFF1EB2B2);
//
//   var index;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Grouped List View Example'),
//         ),
//         body: GroupedListView<dynamic, String>(
//           elements: _data,
//           groupBy: (item) => item['group'],
//           groupComparator: (value1, value2) => value2.compareTo(value1),
//           itemComparator: (item1, item2) =>
//               item1['name'].compareTo(item2['name']),
//
//           order: GroupedListOrder.DESC,
//           useStickyGroupSeparators: true,
//           groupSeparatorBuilder: (groupValue) => Padding(
//             padding: const EdgeInsets.all(8.0),
//             child:
//               Text('${groupValue}'),
//           ),
//           itemBuilder: (context, item,) {
//             return Card(
//               elevation: 8.0,
//               margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
//                child: Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Row(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Expanded(child: Container(
//                       padding: EdgeInsets.only(bottom:8),
//                       child: Column(mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [Text(item('patient name')),],
//
//                       ),
//
//                     ))
//
//                   ],
//               ),
//                ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:patient_tracker/ui/pojooo/pj_records.dart';

void main() => runApp(Recordss());

List _elements = [

  {'name': records_list[1].patient_names, 'group': records_list[1].patient_names[0],},
  {'name': records_list[2].patient_names, 'group': records_list[2].patient_names[0]},
  {'name': records_list[3].patient_names, 'group': records_list[3].patient_names[0]},
  {'name': records_list[4].patient_names, 'group': records_list[4].patient_names[0]},
  {'name': records_list[5].patient_names, 'group': records_list[5].patient_names[0]},
  {'name': records_list[6].patient_names, 'group': records_list[6].patient_names[0]},
  {'name': records_list[7].patient_names, 'group': records_list[7].patient_names[0]},
  {'name': records_list[8].patient_names, 'group': records_list[8].patient_names[0]},
  {'name': records_list[9].patient_names, 'group': records_list[9].patient_names[0]},
  {'name': records_list[10].patient_names, 'group': records_list[10].patient_names[0]},

];
final List<records_class> records_list= records_class.getRecords_list();

class Recordss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          centerTitle: true,
          title:

              Center(child: Text('My records')),
          actions: [
                     IconButton(icon:Icon(Icons.add), onPressed: () {
                       addingRecordModelSheet(context);
                     },),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.red.shade800,
                )),
          ],

        ),

        body:

        GroupedListView<dynamic, String>(
          elements: _elements,
          groupBy: (element) => element['group'],
          groupComparator: (value1, value2) => value2.compareTo(value1),
          itemComparator: (item1, item2) =>
              item1['name'].compareTo(item2['name']),
          order: GroupedListOrder.DESC,
          useStickyGroupSeparators: true,
          groupSeparatorBuilder: (String value) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: const EdgeInsets.fromLTRB(5, 5, 280, 5),
              child: Text(
                value,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          itemBuilder: (c, element) {
            return Card(

              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                child: ListTile(
                  onTap: () => debugPrint(""),
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading:  CircleAvatar(
                    maxRadius: 30,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade700,
                        borderRadius: BorderRadius.only(topRight:Radius.circular(40),bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40),topLeft:Radius.circular(40),),

                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 80,
                            height: 90,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade700,
                              borderRadius: BorderRadius.only(topRight:Radius.circular(40),bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40),topLeft:Radius.circular(40),),

                            ),


                            child: Center(child: Text(element['group'],style:TextStyle(color: Colors.white,fontSize: 30,) ,))),
                      ),
                    ),
                  ),
                  title: Text(element['name'],style: TextStyle(fontWeight: FontWeight.bold),),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),
            );
          },

        ),

      ),


    );


  }
  void addingRecordModelSheet(context){
showModalBottomSheet(context: context, builder: (BuildContext bc)
{
  return SingleChildScrollView(
    child: Container(
      width: 500,
      height: 500,
      decoration: BoxDecoration(

        border:Border.all( color: Colors.teal ,),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
          children: <Widget>[
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(Icons.post_add, color: Color(0xFF1EB2B2) ,),
    ),
              Text("Create a record",style: TextStyle( color: Colors.teal ,fontSize: 20),
              ),
              Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
              decoration: InputDecoration(
              labelText: "Full name",

              labelStyle: TextStyle(
              color: Colors.teal ,
              fontSize: 17,
              ),),
              ),),

              Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
              decoration: InputDecoration(
                labelText: "Email",
               labelStyle: TextStyle(
                color: Colors.teal ,
               fontSize: 17,

    ),

    ),
),
),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "ID",

                  labelStyle: TextStyle(
                    color: Colors.teal,
                    fontSize: 17,
                  ),),
              ),),
            Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:<Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: MaterialButton(


                          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                          color: Colors.white,
                          onPressed:(){},
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side:BorderSide(color: Colors.teal,)),
                          child: Text("cancel",style: TextStyle( color:Colors.teal ,),)
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: MaterialButton(
                          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                          color: Colors.teal ,
                          onPressed:(){},
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          child: Text("  done    ",style: TextStyle(color: Colors.white,),textAlign:TextAlign.center,)
                      ),
                    ),


                  ]

              ),







            ),
    ],
    ),

    ),
  );
}
);

  }

  }
