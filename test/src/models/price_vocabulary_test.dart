import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceVocabulary', () {
    test('model', () {
      final model = PriceVocabulary(
      );

      final map = model.toMap();
      final result = PriceVocabulary.fromMap(map);

    });
  });
}
