import 'dart:math';

class RandomGenerator {
  RandomGenerator({int? seed}) : _random = Random(seed);

  final Random _random;

  /// Gets a random element from the given [list].
  T elementFromList<T>(List<T> list) {
    return list[_random.nextInt(list.length)];
  }
}
