import 'package:flutter/material.dart';

class OrdersModel {
  final String? total;
  final String? client;
  final String? products;
  final String? date;
  final String? employee;


  OrdersModel(
      {
        this.total,
        this.client,
        this.products,
        this.date,
        this.employee
      }
      );

  static OrdersModel fromJson(Map<String, dynamic> json) => OrdersModel(
      total: json["total"],
      client: json["client"],
      products: json["products"],
      date: json["date"],
      employee: json["employee"]
  );

  Map<String, dynamic> toJson() => <String, dynamic>{
    'total': total,
    'client': client,
    'products': products,
    'date': date,
    'employee': employee
  };
}
