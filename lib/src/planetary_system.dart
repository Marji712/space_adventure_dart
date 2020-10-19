import 'dart:math';
import 'planet.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(nullable: false)
class PlanetarySystem {
  final Random _random = Random();
  final String name;
  final List<Planet> planets;

  PlanetarySystem({this.name = 'Unnamed System', this.planets = const []});

  factory PlanetarySystem.fromJson(Map<String, dynamic> json) => _$PlanetarySystemFromJson(json);
  Map<String, dynamic> toJson() => _$PlanetarySystemToJson(this);

  int get numberOfPlanets => planets.length;
  bool get hasPlanets => planets.isNotEmpty;

  Planet randomPlanet() {
    if (!hasPlanets) return Planet.nullPlanet();
    return planets[_random.nextInt(planets.length)];
  }

  Planet planetWithName(String name) {
    return planets.firstWhere( (planet) => planet.name == name,
    orElse: () => Planet.nullPlanet()
    );
  }

}

PlanetarySystem _$PlanetarySystemFromJson(Map<String, dynamic> json) {
  return PlanetarySystem(
    name: json['name'] as String,
    planets: fromJsonMaps(json['planets']),
  );
}

Map<String, dynamic> _$PlanetarySystemToJson(PlanetarySystem instance) => <String, dynamic>{
    'name': instance.name,
    'planets': instance.planets,
};