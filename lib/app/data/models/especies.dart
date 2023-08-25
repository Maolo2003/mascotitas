class EspeciesModel{
  final  String? nombre;



  const EspeciesModel({
    required this.nombre,

  });

  static EspeciesModel fromJson(Map<String, dynamic> json) => EspeciesModel(
      nombre: json['nombre'],

  );

  Map<String, dynamic> toJson() =><String, dynamic>{
    'nombre': nombre,
    
  };

}