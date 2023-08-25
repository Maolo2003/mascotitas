import 'package:flutter/material.dart';

class AppointmentsModel {
  final String? branch;
  final String? service;
  final String? specialist;
  final String? date;
  final String? time;
  final String? pet;


  AppointmentsModel(
     {
       this.branch,
       this.service,
       this.specialist,
       this.date,
       this.time,
       this.pet,
    }
  );

  static AppointmentsModel fromJson(Map<String, dynamic> json) => AppointmentsModel(
      branch: json["branch"],
      service: json["service"],
      specialist: json["specialist"],
      date: json["date"],
      time: json["time"],
      pet: json["pet"]
  );

  Map<String, dynamic> toJson() => <String, dynamic>{
    'branch': branch,
    'service': service,
    'specialist': specialist,
    'date': date,
    'time': time,
    'pet': pet
  };
}