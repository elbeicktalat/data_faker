import 'package:data_faker/data_faker.dart';

void main() {
  print(Faker.name);
  print(Faker.email);
  print(Faker.currency);
  print(Faker.country);
  print(Faker.city);
  print('Paragraph: ' + Faker.paragraph);
  print('Sentence: ' + Faker.sentence);
  print('Word: ' + Faker.word);
}
