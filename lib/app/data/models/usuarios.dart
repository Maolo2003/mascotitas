class UsuariosModel{
  final  String? nombre;
  final String? direccion;
  final String? telefono;
  final String? correo;


  const UsuariosModel({
    required this.nombre,
    required this.direccion,
    required this.telefono,
    required this.correo,
  });

  static UsuariosModel fromJson(Map<String, dynamic> json) => UsuariosModel(
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