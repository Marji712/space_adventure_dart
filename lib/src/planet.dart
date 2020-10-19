import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(nullable: false)
class Planet {
  final String name;
  final String description;

  Planet({this.name, this.description});
  
  factory Planet.fromJson(Map<String, dynamic> json) => _$PlanetFromJson(json);
  Map<String, dynamic> toJson() => _$PlanetToJson(this);

  Planet.nullPlanet() : name = 'Null', description = 'Null planet';
}

  Planet _$PlanetFromJson(Map<String, dynamic> json) {
  return Planet(
    name: json['name'] as String,
    description: json['description'] as String,
  );
  }

  Map<String, dynamic> _$PlanetToJson(Planet instance) => <String, dynamic>{
    'name': instance.name,
    'description': instance.description,
  };
