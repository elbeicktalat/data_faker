import 'package:data_faker/data/res/email_domain.dart';
import 'package:data_faker/src/name.dart';
import 'package:data_faker/src/random.dart';
import 'package:data_faker/utils/text_case.dart';

class Email {
  const Email({
    this.name = const Name(maxChar: 10, textCase: TextCase.lower),
    this.domains = emailDomains,
  });

  ///[name] an object of Name class which make you able to control the name.
  final Name? name;

  ///[domains] a list of Strings which make you able to pass a specific domains.
  final List<String> domains;

  ///[email] is the result of this class, for sure is an email;
  String get email => _getEmail();

  String _getEmail() {
    RandomGenerator random = RandomGenerator();
    return name!.name + random.elementFromList(domains);
  }
}
