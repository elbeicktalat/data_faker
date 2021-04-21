import 'package:data_faker/data_faker.dart';

void main() {
  print(Name(
    maxChar: 10,
    minChar: 9,
    textCase: TextCase.lower,
  ).name);
}
