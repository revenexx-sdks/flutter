import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PaymentVocabularyValue', () {
    test('model', () {
      final model = PaymentVocabularyValue(
      );

      final map = model.toMap();
      final result = PaymentVocabularyValue.fromMap(map);

    });
  });
}
