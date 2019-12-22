import 'package:flutter/foundation.dart';
// Reference
class Pet {
  final int id;
  final String name;
  final String birthDate;
  final String race;
  final String color;
  final String propietary;

  Pet({
    @required this.id,
    @required this.name,
    @required this.birthDate,
    @required this.race,
    @required this.color,
    @required this.propietary,
  }); 

  factory Pet.fromJson(Map<String, dynamic> json) {
    return Pet(
      id: json['id'] as int,
      name: json['name'] as String,
      birthDate: json['birthDate'] as String,
      race: json['race'] as String,
      color: json['color'] as String,
      propietary: json['propietary'] as String,
    );
  }

}