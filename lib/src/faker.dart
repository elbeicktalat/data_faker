import 'package:data_faker/data/cities.dart';
import 'package:data_faker/data/countries.dart';
import 'package:data_faker/data/currencies.dart';
import 'package:data_faker/data/email_domain.dart';
import 'package:data_faker/data/lorem/lorem_paragraphs.dart';
import 'package:data_faker/data/lorem/lorem_sentences.dart';
import 'package:data_faker/data/lorem/lorem_words.dart';
import 'package:data_faker/data/names.dart';
import 'package:data_faker/models/currency.dart';
import 'package:data_faker/src/random_generator.dart';

///[Faker] a quick way to get fake data without ability to customise it,
/// use it just if you like how the data is generated,
/// otherwise get an instance from the original class.
class Faker {
  Faker._();

  static RandomGenerator _random = RandomGenerator();

  static String _name() {
    return _random.elementFromList(maleNames);
  }

  static String _email() {
    return name.toLowerCase() + _random.elementFromList(emailDomains);
  }

  static String _currency() {
    final Currency _randomCurrency = _random.elementFromList(currencies);
    return _randomCurrency.name + ' ' + _randomCurrency.symbol!;
  }

  static String _country() {
    return _random.elementFromList(countries);
  }

  static String _city() {
    return _random.elementFromList(capitalCities).name;
  }

  static String _loremWord() {
    return _random.elementFromList(words);
  }

  static String _loremSentence() {
    return _random.elementFromList(sentences);
  }

  static String _loremParagraph() {
    return _random.elementFromList(paragraphs);
  }

  ///[name] give you random male name.
  static String get name => _name();

  ///[email] give you random email with a male user name.
  static String get email => _email();

  ///[currency] give you a random currency with his symbol.
  static String get currency => _currency();

  ///[city] give you a random capital city.
  static String get city => _city();

  ///[country] give you a random country.
  static String get country => _country();

  ///[word] gives a random lorem word.
  static String get word => _loremWord();

  ///[sentence] gives a random lorem sentence.
  static String get sentence => _loremSentence();

  ///[paragraph] gives a random lorem paragraph.
  static String get paragraph => _loremParagraph();
}
