import 'package:meta/meta.dart';

@immutable
class City {
  const City(
    this.name, [
    this.area,
    this.elevation,
    this.population,
    this.timeZone,
    this.postalCode,
  ]);

  final String name;
  final double? area;
  final double? elevation;
  final double? population;
  final String? timeZone;
  final String? postalCode;
}
