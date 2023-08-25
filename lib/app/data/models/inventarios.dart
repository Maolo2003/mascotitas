class InventariosModel{
  final  String? stock;
  final String? fechaentrada;
  final String? fechasalida;


  const InventariosModel({
    required this.stock,
    required this.fechaentrada,
    required this.fechasalida
  });

  static InventariosModel fromJson(Map<String, dynamic> json) => InventariosModel(
      stock: json['nombre'],
      fechaentrada: json['fecha de entrada'],
      fechasalida: json['fecha de salida']
  );

  Map<String, dynamic> toJson() =><String, dynamic>{
    'stock': stock,
    'fechaentrada': fechaentrada,
    'fechasalida': fechasalida
  };

}