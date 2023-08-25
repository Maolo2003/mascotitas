class MarcasModel{
  final  String? nombre;



  const MarcasModel({
    required this.nombre,

  });

  static MarcasModel fromJson(Map<String, dynamic> json) => MarcasModel(
    nombre: json['nombre'],

  );

  Map<String, dynamic> toJson() =><String, dynamic>{
    'nombre': nombre,

  };

}