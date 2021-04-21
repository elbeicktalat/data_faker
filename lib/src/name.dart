import 'dart:math';
import 'package:data_faker/data/data.dart' as data show names;

class Name {
  Name({
    this.charCount,
    this.startWith = '',
    this.endWith = '',
  }) {
    try {
      getName();
    } catch (e) {}
  }

  final int? charCount;
  late String? name;
  final String? startWith;
  final String? endWith;

  final List<String> _names = [];
  final Random _random = Random();

  String getName() {
    data.names.forEach((name) {
      if (name.length == charCount) {
        if (name.startsWith(startWith!) && name.endsWith(endWith!)) {
            _names.add(name);
          }
      }
    });
    return this.name = _names.elementAt(_random.nextInt(_names.length));
  }
}
