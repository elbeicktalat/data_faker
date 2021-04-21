import 'package:data_faker/data_faker.dart';

void main() {
  print(Name(
    charCount: 6,
    startWith: 'H',
    endWith: 'y',
    textCase: TextCase.lower,
  ).name);
}
