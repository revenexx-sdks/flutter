import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PaymentVocabulary', () {
    test('model', () {
      final model = PaymentVocabulary();

      final map = model.toMap();
      final result = PaymentVocabulary.fromMap(map);
    });
  });
}
