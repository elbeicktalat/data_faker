import 'package:data_faker/src/random_generator.dart';
import 'package:data_faker/utils/gender.dart';
import 'package:data_faker/utils/text_case.dart';
import 'package:data_faker/data/data.dart' as data show names;

class Name {
  const Name({
    this.charCount,
    this.minChar = 0,
    this.maxChar = 0,
    this.startWith = '',
    this.endWith = '',
    this.contains = '',
    this.textCase,
    this.gender,
  });

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

  ///[startWith] It allows you to get a specifec name which initial with 'A'.
  final String? startWith;

  ///[endWith] It allows you to get a specifec name which finish with 'Z'.
  final String? endWith;

  ///[contains] It allows you to get a specifec name which contain 'any'.
  final String? contains;

  ///[textCase] It help you to get a name with specificing his case,
  ///you have tow cases one is the lowar => **max** the second is upper **MAX**
  ///also you have the default one without passing anythink => **Max**.
  final TextCase? textCase;

  ///[gender] allow you to get a name by gender.
  final Gender? gender;

  String get name => _getName();

  String _getName() {
    ///[_names] storage the names after filterlizeing it.
    final List<String> _names = [];
    final RandomGenerator _random = RandomGenerator();
    switch (gender) {
      case Gender.female:
        _getFemaleName(_names);
        break;
      case Gender.male:
      default:
        _getMaleName(_names);
    }
    return _random.elementFromList(_names);
  }

  void _generateName(String name, List<String> _names) {
    if (charCount != null && name.length == charCount ||
        name.length <= maxChar! && name.length >= minChar!) {
      if (name.contains(contains!)) {
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
    }
  }

  void _getMaleName(List<String> _names) {
    data.names.first.forEach((name) {
      _generateName(name, _names);
    });
  }

  void _getFemaleName(List<String> _names) {
    data.names.last.forEach((name) {
      _generateName(name, _names);
    });
  }
}
