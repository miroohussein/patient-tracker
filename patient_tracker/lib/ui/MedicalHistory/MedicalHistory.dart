

import 'package:flutter/material.dart';

class MedicalHistory extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medical History",style: TextStyle(color: Colors.white,fontSize: 25),),
        backgroundColor: Color(0xFF1EB2B2) ,
        leading: IconButton(

            onPressed: ()
            { },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),),
        body:SingleChildScrollView(
          child: Column(

      children:<Widget>  [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 55, 160, 5),
            child: Text("Personal history",style: TextStyle(color: Colors.teal,fontSize: 25),),
          ),
           Container(

             margin: const EdgeInsets.fromLTRB(5, 30, 10, 5),
             width: 600,
             height: 250,
             child: Center(
               child: DataTable(dataRowHeight: 60,

                 decoration: BoxDecoration(color: Colors.grey.shade200,),

                 columns: const<DataColumn>[
                 DataColumn(label: Padding(
                   padding: EdgeInsets.fromLTRB(0, 5, 5, 5),
                   child: Text('Diseases'),
                 ),),
                  DataColumn(label: Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 5, 5),
                    child: Text('Age '),
                  ),),
                 DataColumn(label: Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Text(' Notes'),
                 ),),
                 ],
                  rows:const<DataRow> [
                    DataRow(
                     cells: <DataCell>[
                      DataCell(Text('Disease Name'),),
                            DataCell(Text('37'),),
                                DataCell(Text(''),),
                          ],),
                        DataRow(
                        cells: <DataCell>[
                        DataCell(Text('Disease Name'),),
                        DataCell(Text('45'),),
                        DataCell(Text(''),),
                        ],),
                              DataRow(
                              cells: <DataCell>[
                              DataCell(Text('Disease Name'),),
                              DataCell(Text('65'),),
                              DataCell(Text(''),),
                              ],)
                        ],




               ),
             ),
           ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 55, 160, 5),
            child: Text("Family history",style: TextStyle(color: Colors.teal,fontSize: 25),),
          ),
          Container(

            margin: const EdgeInsets.fromLTRB(25, 30, 25, 5),
            width: 600,
            height: 250,
            child: DataTable(dataRowHeight: 60,
              decoration: BoxDecoration(color: Colors.grey.shade200,),

              columns: const<DataColumn>[
                DataColumn(label: Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 5, 5),
                  child: Text('Diseases'),
                ),),
                DataColumn(label: Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 5, 5),
                  child: Text('Age',style: TextStyle(fontSize: 15,),),
                ),),
                DataColumn(label: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Relation'),
                ),),
              ],
              rows:const<DataRow> [
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Disease Name'),),
                    DataCell(Text('40'),),
                    DataCell(Text('Brother'),),
                  ],),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Disease Name'),),
                    DataCell(Text('50'),),
                    DataCell(Text('Father'),),
                  ],),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Disease Name'),),
                    DataCell(Text('65'),),
                    DataCell(Text('Father'),),
                  ],)
              ],




            ),
          ),
    
    ],
    ),
        ),



    );
  }
}
