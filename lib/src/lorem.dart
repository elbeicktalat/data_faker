import 'package:data_faker/data/lorem/lorem_paragraphs.dart';
import 'package:data_faker/data/lorem/lorem_sentences.dart';
import 'package:data_faker/data/lorem/lorem_words.dart';
import 'package:data_faker/src/random_generator.dart';

enum _LoremType {
  paragraph,
  sentence,
  word,
}

///[Lorem] helps you with text stuff it gives you a text in multiple forms
/// such as word, sentence, paragraph.
class Lorem {
  ///[Lorem.paragraph()] Gives you a paragraph by specifying
  /// the minimum and the maximum words count.
  Lorem.paragraph({
    this.minWord,
    this.maxWord,
  }) : _loremType = _LoremType.paragraph;

  ///[Lorem.sentence()] Gives you a sentence by specifying
  /// the minimum and the maximum words count.
  Lorem.sentence({
    this.minWord,
    this.maxWord,
  }) : _loremType = _LoremType.sentence;

  ///[Lorem.word()] Gives you a word by specifying
  /// the minimum and the maximum characters count.
  Lorem.word({
    this.minChar,
    this.maxChar,
  }) : _loremType = _LoremType.word;

  final _LoremType _loremType;

  ///[minWord] count of a minimum words in **paragraph** or **sentence**.
  late final int? minWord;

  ///[maxWord] count of a maximum words in **paragraph** or **sentence**.
  late final int? maxWord;

  ///[minChar] count of a minimum characters in **word**.
  late final int? minChar;

  ///[maxChar] count of a maximum characters in **word**.
  late final int? maxChar;

  ///[lorem] get the generated lorem.
  String get lorem => _getLorem();

  String _getLorem() {
    List<String> _lorems = [];
    final RandomGenerator random = RandomGenerator();
    switch (_loremType) {
      case _LoremType.paragraph:
        _getParagraph(_lorems);
        break;
      case _LoremType.sentence:
        _getSentence(_lorems);
        break;
      case _LoremType.word:
        _getWord(_lorems);
        break;
      default:
        break;
    }
    return random.elementFromList(_lorems);
  }

  void _getParagraph(List<String> _lorems) {
    paragraphs.forEach((paragraph) {
      if (minWord! <= paragraph.split(' ').length &&
          maxWord! >= paragraph.split(' ').length) {
        _lorems.add(paragraph);
      }
    });
  }

  void _getSentence(List<String> _lorems) {
    sentences.forEach((sentence) {
      if (minWord! <= sentence.split(' ').length &&
          maxWord! >= sentence.split(' ').length) {
        _lorems.add(sentence);
      }
    });
  }

  void _getWord(List<String> _lorems) {
    words.forEach((word) {
      if (minChar! <= word.length && maxChar! >= word.length) {
        _lorems.add(word);
      }
    });
  }
}
