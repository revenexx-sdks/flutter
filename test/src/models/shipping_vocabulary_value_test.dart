import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingVocabularyValue', () {
    test('model', () {
      final model = ShippingVocabularyValue(
      );

      final map = model.toMap();
      final result = ShippingVocabularyValue.fromMap(map);

    });
  });
}
