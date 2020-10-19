class Planet {
  final String name;
  final String description;

  Planet({this.name, this.description});

  Planet.nullPlanet() : name = 'Null', description = 'Null planet';
}

List<Planet> fromJsonMaps(Iterable planetMaps) {
  return List<Planet>.from( 
    planetMaps.map(
      (item) => Planet(name: item['name'], description: item['description'])
    )
  );
} 