import 'package:data_faker/models/address/city.dart';
import 'package:data_faker/models/address/utils.dart';
import 'package:data_faker/models/currency.dart';

class Country {
  const Country({
    required this.name,
    required this.flagUrl,
    required this.capital,
    required this.lang,
    this.langs,
    required this.area,
    required this.population,
    required this.currency,
    this.currencies,
    required this.timeZone,
    required this.dateFormat,
    required this.drivingSide,
    this.callingCode,
    this.isoCode,
    this.internetTLD,
    this.calendarType,
    required this.continent,
  });

  ///[name] Defines the country name.
  final String name;

  ///[flagUrl] Gives you an image url of the country flag,
  /// you'll be able to displaying it with **Image.network**.
  final String flagUrl;

  ///[capital] Defines the capital city.
  final City capital;

  ///[lang] Defines the official language.
  final String lang;

  ///[langs] Defines the other languages used in country.
  final List<String>? langs;

  ///[area] Defines the country area.
  final String area;

  ///[population] Defines the country population.
  final String population;

  ///[currency] Defines the official currency.
  final Currency currency;

  ///[currencies] Defines the other currencies used in country.
  final List<Currency>? currencies;

  final String timeZone;

  ///[dateFormat] Defines used format for the date.
  final DateFormat dateFormat;

  ///[drivingSide] Defines the driving side in that country.
  final DrivingSide drivingSide;

  ///[callingCode] Defines the calling code, example +39, +1 ect.
  final String? callingCode;

  ///[isoCode] Defines the identifier code for the country, example: IT, US ect.
  final String? isoCode;

  ///[internetTLD] Defines the top level domain, example: .it, .is ect.
  final String? internetTLD;

  ///[calendarType] Defines the calendars type, lunar, solar.
  final CalendarType? calendarType;

  ///[continent] Defines the country continent, Africa, Asia, Europe ect.
  final Continent continent;
}
