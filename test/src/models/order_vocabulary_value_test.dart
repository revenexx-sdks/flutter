import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderVocabularyValue', () {
    test('model', () {
      final model = OrderVocabularyValue();

      final map = model.toMap();
      final result = OrderVocabularyValue.fromMap(map);
    });
  });
}
