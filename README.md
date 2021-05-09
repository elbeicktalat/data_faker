# data_faker

[![Dart](https://github.com/elbeicktalat/data_faker/actions/workflows/dart.yml/badge.svg)](https://github.com/elbeicktalat/data_faker/actions/workflows/dart.yml)
[![Pub Version](https://img.shields.io/pub/v/data_faker?&logo=dart)](https://pub.dev/packages/data_faker)
[![Github Stars](https://img.shields.io/github/stars/elbeicktalat/data_faker?logo=github)](https://github.com/elbeicktalat/data_faker)

A dart library for generating a fake data. This library make your life easier, also it's very customizable.

## Installation
1) Add this to your packages pubspec.yaml file:
```yaml
dependencies:
  auth_buttons: ^0.0.5
```
2) Install it 
You can install it from the command line:
```bash
$ flutter pub get
```
3) Import it 
Now in Dart code, you can use:
```dart
import 'package:data_faker/data_faker.dart';
```

## Usage

A simple usage example:

```dart
import 'package:data_faker/data_faker.dart';

void main() {
  Name name = Name(charCount: 3, textCase: TextCase.lower);
  print(name.name);

  //or take it easy by using the code below
  print(Faker.name);
}
```
As you see in the example before, the first way allows you to get a `name` how you want, you can specific gender, character count, max & min character etc.

This is not the same for the second one, here you getting data without any customizing, so using it is cool if you like the result otherwise use the first example.

You'll get one of those names [leo, max, kai], 
if you are using `VSCode` hover over parameters will show you a simple documentation of this parameter, if you're using `Android Studio` click on `ctrl + Q` on `windows` on `Mac` click `command + Q`.

## Faker
```dart
  print(Faker.name); // random male name.
  print(Faker.email); // random email with male name.
  print(Faker.currency); // random currency with it name and symbol.
  print(Faker.city); // random capital city.
  print(Faker.country); // random country.
  print(Faker.paragraph); // random paragraph.
  print(Faker.sentence); // random sentence.
  print(Faker.word); // random word.
```
