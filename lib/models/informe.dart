import 'dart:convert';
import 'package:http/http.dart' as http;

List<Informe> informeFromJson(String str) => List<Informe>.from(json.decode(str).map((x) => Informe.fromJson(x)));

class Informe {
  final String nombre;
  final String mes;
  final double disponible;

  Informe(this.nombre, this.mes, this.disponible);

  static Future<List<Informe>> fetchAll() async {
    var response = await http.post('url', body: {'name': 'doodle', 'color': 'blue'});
    var lista = informeFromJson(response.body);
    return lista;
  }

  factory Informe.fromJson(Map<String, dynamic> json) => Informe(
    json["nombre"],
    json["mes"],
    json["disponible"],
  );

  Map<String, dynamic> toJson() => {
      "nombre": nombre,
      "mes": mes,
      "disponible": disponible,
  };
}