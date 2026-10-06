import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceTier', () {
    test('model', () {
      final model = PriceTier();

      final map = model.toMap();
      final result = PriceTier.fromMap(map);
    });
  });
}
