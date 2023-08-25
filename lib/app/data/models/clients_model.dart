import 'package:flutter/material.dart';

class ClientsModel {
  final String? name;
  final String? lastName;
  final String? username;
  final String? emailAddress;
  final String? password;

  ClientsModel({
    this.name,
    this.lastName,
    this.username,
    this.emailAddress,
    this.password
  });

static ClientsModel fromJson(Map<String, dynamic> json) => ClientsModel(
  name: json["name"],
  lastName: json["lastName"],
  username: json["username"],
  emailAddress: json["emailAddress"],
  password: json["password"]
);

  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'lastName': lastName,
        'username': username,
        'emailAddress': emailAddress,
        'password': password
      };
}