import 'package:flutter/material.dart';
import 'package:patient_tracker/ui/home/home.dart';
import 'package:patient_tracker/ui/navigationBar/costumeNavigationBar.dart';
import 'package:patient_tracker/ui/profile/profile.dart';
import 'package:patient_tracker/ui/settings/settings.dart';
import 'package:patient_tracker/ui/sign_up/doctor_sign_up.dart';
import 'package:patient_tracker/ui/sign_up/patient_sign_up.dart';
import 'package:patient_tracker/ui/logo/logo.dart';
import 'package:patient_tracker/ui/hospital_page/hopital_page.dart';
import 'package:patient_tracker/ui/navigationBar/navigationBar.dart';

void main() {
  runApp(PatientTracker());
}

class PatientTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return NavigationBar();
  }
}
