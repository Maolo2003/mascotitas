import 'package:flutter/material.dart';

class PetsModel {
  final String? name;
  final String? species;
  final String? breed;
  final String? birthdate;


  PetsModel(
      {
        this.name,
        this.species,
        this.breed,
        this.birthdate
      }
  );

  static PetsModel fromJson(Map<String, dynamic> json) => PetsModel(
      name: json["name"],
      species: json["species"],
      breed: json["breed"],
      birthdate: json["birthdate"]
  );

  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    'species': species,
    'breed': breed,
    'birthdate': birthdate
  };
}
