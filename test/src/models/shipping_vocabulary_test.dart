import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingVocabulary', () {
    test('model', () {
      final model = ShippingVocabulary();

      final map = model.toMap();
      final result = ShippingVocabulary.fromMap(map);
    });
  });
}
