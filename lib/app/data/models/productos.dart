class ProductosModel{
  final  String? nombre;
  final String? precio;
  final String? fechavencimiento;


  const ProductosModel({
    required this.nombre,
    required this.precio,
    required this.fechavencimiento,
  });

  static ProductosModel fromJson(Map<String, dynamic> json) => ProductosModel(
      nombre: json['nombre'],
      precio: json['precio'],
      fechavencimiento: json['fecha de vencimiento'],
  );

  Map<String, dynamic> toJson() =><String, dynamic>{
    'nombre': nombre,
    'precio': precio,
    'fechavencimiento': fechavencimiento,
  };

}