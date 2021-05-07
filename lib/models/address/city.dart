class City {
  const City(
    this.name, [
    this.area,
    this.elevation,
    this.population,
    this.timeZone,
    this.postalCode,
  ]);

  ///[name] define the city name.
  final String name;

  ///[area] define the city area.
  final String? area;

  ///[elevation] defines the elevation of the city from the sea level.
  final String? elevation;

  ///[population] defines the population count.
  final String? population;

  final String? timeZone;

  ///[postalCode] defines the postal code.
  final String? postalCode;
}
