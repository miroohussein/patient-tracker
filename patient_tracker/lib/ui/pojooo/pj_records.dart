import 'package:flutter/material.dart';
class records_class {
  static List<records_class> getRecords_list()=> [
    records_class("Mohammmed Ali","Modified on 13/6/2021"),
    records_class("Asmaa Emad","Modified on 13/6/2021"),
    records_class("Asma Kayed","Modified on 13/6/2021"),
    records_class("Hossam Ahmed","Modified on 13/6/2021"),
    records_class("Mostafa Abdellatif","Modified on 13/6/2021"),
    records_class("Moataz Elmaghraby","Modified on 13/6/2021"),
    records_class("Marwa Hussien","Modified on 13/6/2021"),
    records_class("Nabil Mohammed","Modified on 13/6/2021"),
    records_class("Sara fahmy","Modified on 13/6/2021"),
    records_class("Samer Ismaiel","Modified on 13/6/2021"),
    records_class("Tasneem Nooreldeen","Modified on 13/6/2021"),
    records_class("Yosef Mohammed","Modified on 13/6/2021"),
  ];
  String patient_names;
  String modifying;

  records_class(this.patient_names,this.modifying);

}
