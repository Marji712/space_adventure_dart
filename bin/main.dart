import 'dart:convert';
import 'dart:io';
import 'package:space_adventure/dart_space_adventure.dart';

void main(List<String> arguments) {
  File(arguments[0]).readAsString().then((String json) {
    SpaceAdventure(
      planetarySystem: PlanetarySystem.fromJson(jsonDecode(json))
    ).start();
  });

}
