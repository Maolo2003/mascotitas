import 'package:flutter/material.dart';

class UsersModel {
  final String? name;
  final String? lastName;
  final String? username;
  final String? emailAddress;
  final String? password;
  final String? phoneNumber;

  UsersModel({
    this.name,
    this.lastName,
    this.username,
    this.emailAddress,
    this.password,
    this.phoneNumber
  });

static UsersModel fromJson(Map<String, dynamic> json) => UsersModel(
  name: json["name"],
  lastName: json["lastName"],
  username: json["username"],
  emailAddress: json["emailAddress"],
  password: json["password"],
  phoneNumber: json["phoneNumber"]
);

  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'lastName': lastName,
        'username': username,
        'emailAddress': emailAddress,
        'password': password,
        'phoneNumber': phoneNumber
      };
}