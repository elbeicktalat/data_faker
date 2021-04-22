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
    this.maxChar = 10,
    this.minChar = 0,
  }) {
    try {
      getName();
    } catch (e) {}
  }

  ///[charCount] It will give you a name with this specific character long
  ///exactly the same example: to get **Oliver** char Count should be 6;
  final int? charCount;

  ///[maxChar] It allows you to get a name with the max characters count or under it.
  /// example: to get **alexander** maxChar should be 9,
  /// also it can give you **alex** or any name has no more character than 9.
  final int? maxChar;

  ///[minChar] It allows you to get a name with the min characters count or upper it.
  /// example: to get **alex** minChar should be 4,
  /// also it can give you **alexander** or any name has more character than 4.
  final int? minChar;

  late String? name;

  ///[startWith] It allows you to get a specifec name which initial with 'A'.
  final String? startWith;

  ///[endWith] It allows you to get a specifec name which finish with 'Z'.
  final String? endWith;

  ///[textCase] It help you to get a name with specificing his case,
  ///you have tow cases one is the lowar => **max** the second is upper **MAX**
  ///also you have the default one without passing anythink => **Max**.
  final TextCase? textCase;

  ///[_names] storage the names after filterlizeing it.
  final List<String> _names = [];
  final Random _random = Random();

  String getName() {
    data.names.forEach((name) {
      if (name.length == charCount &&
          name.length <= maxChar! &&
          name.length >= minChar!) {
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
    print(_names);
    return this.name = _names.elementAt(_random.nextInt(_names.length));
  }
}
