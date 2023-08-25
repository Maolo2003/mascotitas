import 'package:flutter/material.dart';

class ServicesModel {
  final String? description;
  final String? price;
  final String? duration;


  ServicesModel(
      {
        this.description,
        this.price,
        this.duration
      }
      );

  static ServicesModel fromJson(Map<String, dynamic> json) => ServicesModel(
      description: json["description"],
      price: json["price"],
      duration: json["duration"]
  );

  Map<String, dynamic> toJson() => <String, dynamic>{
    'description': description,
    'price': price,
    'duration': duration,
  };
}