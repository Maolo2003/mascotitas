class RazasModel{
  final  String? nombre;



  const RazasModel({
    required this.nombre,

  });

  static RazasModel fromJson(Map<String, dynamic> json) => RazasModel(
    nombre: json['nombre'],

  );

  Map<String, dynamic> toJson() =><String, dynamic>{
    'nombre': nombre,

  };

}