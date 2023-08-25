import 'package:flutter/material.dart';

class ProductsModel {
  final String? description;
  final String? price;
  final String? expirationDate;
  final String? stock;


  ProductsModel(
      {
        this.description,
        this.price,
        this.expirationDate,
        this.stock
      }
      );

  static ProductsModel fromJson(Map<String, dynamic> json) => ProductsModel(
      description: json["description"],
      price: json["price"],
      expirationDate: json["expirationDate"],
      stock: json["stock"]
  );

  Map<String, dynamic> toJson() => <String, dynamic>{
    'description': description,
    'price': price,
    'expirationDate': expirationDate,
    'stock': stock
  };
}