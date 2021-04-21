import 'dart:math';
import 'package:data_faker/data/data.dart' as data show names;

enum TextCase {
  upper,
  lower,
}

class Name {
  Name({
    this.charCount,
    this.startWith = '',
    this.endWith = '',
    this.textCase,
  }) {
    try {
      getName();
    } catch (e) {}
  }

  final int? charCount;
  late String? name;
  final String? startWith;
  final String? endWith;
  final TextCase? textCase;
  final List<String> _names = [];
  final Random _random = Random();

  String getName() {
    data.names.forEach((name) {
      if (name.length == charCount) {
        if (name.startsWith(startWith!) && name.endsWith(endWith!)) {
          switch (textCase) {
            case TextCase.upper:
              _names.add(name.toUpperCase());
              break;
            case TextCase.lower:
              _names.add(name.toLowerCase());
              break;
            default:
              _names.add(name);
          }
        }
      }
    });
    return this.name = _names.elementAt(_random.nextInt(_names.length));
  }
}
