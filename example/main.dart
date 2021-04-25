import 'package:data_faker/data_faker.dart';
import 'package:data_faker/src/email.dart';

void main() {
  print(Name(charCount: 3, gender: Gender.male).name);
  print(Email().email);
}
