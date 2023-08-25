class MascotasModel{
  final String? nombre;
  final String? fechanacimiento;


MascotasModel({
  required this.nombre,
  required this.fechanacimiento,
});

  static MascotasModel fromJson(Map<String, dynamic> json) => MascotasModel(
      nombre: json['nombre'],
      fechanacimiento: json['Fecha de nacimiento'],

  );

  Map<String, dynamic> toJson() =><String, dynamic>{
    'nombre': nombre,
    'fechanacimiento': fechanacimiento

  };

}