# data_faker
[![Pub Version](https://img.shields.io/pub/v/data_faker?&logo=dart)](https://pub.dev/packages/data_faker)

A dart library for generating a fake data.


## Installation
1) Add this to your packages pubspec.yaml file:
```yaml
dependencies:
  auth_buttons: ^0.0.1
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
}
```
You'll get one of those names [leo, max, kai], 
if you are using `VSCode` hover over parameters will show you a simple documentation of this parameter, if you're using `Android Studio` click on `ctrl + Q` on `windows` on `Mac` click `command + Q`.