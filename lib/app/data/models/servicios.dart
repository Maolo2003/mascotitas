class ServiciosModel{
  final String? nombre;
  final String? fecha;
  final String? hora;
  final String? duracion;


const ServiciosModel({
    required this.nombre,
    required this.fecha,
    required this.hora,
    required this.duracion
  });

  static ServiciosModel fromJson(Map<String, dynamic> json) => ServiciosModel(
      nombre: json['nombre'],
      fecha: json['fecha'],
      hora: json['hora'],
      duracion: json['duracion']
  );

  Map<String, dynamic> toJson() =><String, dynamic>{
    'nombre': nombre,
    'fecha': fecha,
    'hora': hora,
    'duracion': duracion

  };

}