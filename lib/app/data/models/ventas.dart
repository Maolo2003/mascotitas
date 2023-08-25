class VentasModel{
  final  String? fecha;
  final String? cantidadproductos;


  const VentasModel({
    required this.fecha,
    required this.cantidadproductos
  });

  static VentasModel fromJson(Map<String, dynamic> json) => VentasModel(
      fecha: json['fecha'],
      cantidadproductos: json['cantidad de productos']
  );

  Map<String, dynamic> toJson() =><String, dynamic>{
    'nombre': fecha,
    'cantidadproductos': cantidadproductos
  };

}