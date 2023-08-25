class ProfesionalesModel{
  final  String? nombre;
  final String? direccion;
  final String? telefono;
  final String? correo;


  const ProfesionalesModel({
    required this.nombre,
    required this.direccion,
    required this.telefono,
    required this.correo,
  });

  static ProfesionalesModel fromJson(Map<String, dynamic> json) => ProfesionalesModel(
      nombre: json['nombre'],
      direccion: json['Direcion'],
      telefono: json['telefono'],
      correo: json['correo']
  );

  Map<String, dynamic> toJson() =><String, dynamic>{
    'nombre': nombre,
    'direccion': direccion,
    'telefono': telefono,
    'correo': correo
  };

}