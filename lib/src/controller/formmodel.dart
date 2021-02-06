import 'package:flutter/material.dart';
import 'dart:io';
class FormModel {
  String firstName;
  String lastName;
  String gender;
  String dateofbirle;
  String major;
  String modellphone;
  String adress;
  File imageURL;
  FormModel({
    this.firstName,
    this.lastName,
    this.gender,
    this.dateofbirle,
    this.major,
    this.modellphone,
    this.adress,
    this.imageURL,
   });
}
List<FormModel>mylist=[];
