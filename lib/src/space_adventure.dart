import 'dart:io';
import 'dart:math';
import 'planetary_system.dart';

class SpaceAdventure {
  final PlanetarySystem planetarySystem;

  SpaceAdventure({this.planetarySystem});

  void start() {
    printGreeting();
    printIntroduction(responseToPrompt('What is your name?'));
    print('Let\s go on an adventure!');
    travel(promptForRandomOrSpecificDestination(
        'Shall I randomly choose a planet for you to visit? (Y or N)'));
  }

  void printGreeting() {
    print('Welcome to the ${planetarySystem.name}!\n'
        'There are ${planetarySystem.numberOfPlanets} planets to explore.');
  }

  void printIntroduction(String name) {
    print('Nice to meet you, $name.'
        ' My name is Eliza, I\'m an old friend of Alexa.');
  }

  void travel(bool randomDestination) {
    if (randomDestination) {
      travelToRandomDestination();
    } else {
      travelTo(responseToPrompt('Name the planet you would like to visit.'));
    }
  }

  bool promptForRandomOrSpecificDestination(String prompt) {
    String answer;
    while (answer != 'Y' && answer != 'N') {
      answer = responseToPrompt(prompt);
      if (answer == 'Y') {
        return true;
      } else if (answer == 'N') {
        return false;
      } else {
        print('Sorry, I didn\'t get that.');
      }
    }
    return false;
  }

  String responseToPrompt(String prompt) {
    print(prompt);
    return stdin.readLineSync();
  }

  void travelToRandomDestination() {
    final index = Random().nextInt(planetarySystem.numberOfPlanets);
    travelTo(planetarySystem.planets[index].name);
  }

  void travelTo(String destination) {
    print('Traveling to $destination...');
    planetarySystem.planets.forEach( (planet) {
      if (planet.name == destination) {
        print('Arrived at ${planet.name}. ${planet.description}');
      }
    });
  }
}
