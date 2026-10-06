import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderListVocabularyValue', () {
    test('model', () {
      final model = OrderListVocabularyValue();

      final map = model.toMap();
      final result = OrderListVocabularyValue.fromMap(map);
    });
  });
}
