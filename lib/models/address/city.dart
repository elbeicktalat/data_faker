class City {
  City(
    this.name, [
    this.area,
    this.elevation,
    this.population,
    this.timeZone,
    this.postalCode,
  ]);

  String name;
  double? area;
  double? elevation;
  double? population;
  String? timeZone;
  String? postalCode;
}
