import 'dart:math';
import 'package:data_faker/data/res/email_domain.dart';
import 'package:data_faker/src/name.dart';
import 'package:data_faker/utils/text_case.dart';

class Email {
  Email() {
    email = _name.name +
        emailDomains.elementAt(_random.nextInt(emailDomains.length));
  }

  //Todo: get email by gender.
  //Todo: get email by character count
  String? email;
  Random _random = Random();
  Name _name = Name(maxChar: 10, textCase: TextCase.lower);
}
