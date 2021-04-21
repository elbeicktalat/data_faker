import 'package:data_faker/data_faker.dart' show Name;

void main() {
  print(Name(charCount: 6, startWith: 'H', endWith: 'y').name);
}
