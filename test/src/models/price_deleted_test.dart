import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceDeleted', () {
    test('model', () {
      final model = PriceDeleted();

      final map = model.toMap();
      final result = PriceDeleted.fromMap(map);
    });
  });
}
