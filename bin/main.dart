import 'package:space_adventure/dart_space_adventure.dart';

void main(List<String> arguments) {
  SpaceAdventure(
      planetarySystem: PlanetarySystem(
        name: systemName, 
        planets: planets()
        )
  ).start();
}

List<Planet> planets() {
  return planetData.entries.map(
     (e) => Planet(name: e.key, description: e.value)
     ).toList();
}

