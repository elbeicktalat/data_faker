import 'package:data_faker/data_faker.dart';
import 'package:data_faker/src/lorem.dart';

void main() {
  print(Faker.name);
  print(Faker.email);
  print(Faker.currency);
  print(Faker.country);
  print(Faker.city);
  print('\nparagraph');
  print(Lorem.paragraph(minWord: 8, maxWord: 47).lorem);
  print('\nsentence');
  print(Lorem.sentence(minWord: 8, maxWord: 8).lorem);
  print('\nword');
  print(Lorem.word(minChar: 2, maxChar: 3).lorem);
}
