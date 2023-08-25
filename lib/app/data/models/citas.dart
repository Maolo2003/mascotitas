class CitasModel{
  final  String? fecha;
  final String? hora;
  final String? duracion;


CitasModel({
  required this.fecha,
  required this.hora,
  required this.duracion,
});

static CitasModel fromJson(Map<String, dynamic> json) => CitasModel(
      fecha: json['fecha'],
      hora: json['hora'],
      duracion: json['duracion']
  );

  Map<String, dynamic> toJson() =><String, dynamic>{
    'fecha': fecha,
    'hora': hora,
    'duracion': duracion

  };

}