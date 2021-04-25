import 'package:data_faker/data/email_domain.dart';
import 'package:data_faker/data/names.dart';
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

  static String get name => _name();
  static String get email => _email();
}
