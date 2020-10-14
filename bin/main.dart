// import 'package:space_adventure/space_adventure.dart' as space_adventure;
import 'dart:io';

void main(List<String> arguments) {
  print('Welcome to the Solar System!\n'
      'There are 8 planets to explore.\n'
      'What is your name?');

  final name = stdin.readLineSync();

  print('Nice to meet you, $name.'
      ' My name is Eliza, I\'m an old friend of Alexa.\n'
      'Let\s go on an adventure!\n'
      'Shall I randomly choose a planet for you to visit? (Y or N)');

  String answer;

  while (answer != 'Y' && answer != 'N') {
    answer = stdin.readLineSync();
    if (answer == 'Y') {
      print('Traveling to Mercury...\n'
          'Arrived at Mercury. A very cold planet, furthest from the sun.');
    } else if (answer == 'N') {
      print('Name the planet you would like to visit.');

      final planetName = stdin.readLineSync();

      print('Traveling to $planetName...\n'
          'Arrived at $planetName. A very cold planet, furthest from the sun.');
    } else {
      print('Sorry, I didn\'t get that.');
    }
  }
}
