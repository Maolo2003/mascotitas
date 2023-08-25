class EspecialidadesModel{
  final  String? nombre;



  const EspecialidadesModel({
    required this.nombre,

  });

  static EspecialidadesModel fromJson(Map<String, dynamic> json) => EspecialidadesModel(
    nombre: json['nombre'],

  );

  Map<String, dynamic> toJson() =><String, dynamic>{
    'nombre': nombre,

  };

}