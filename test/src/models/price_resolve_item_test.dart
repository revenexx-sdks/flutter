import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceResolveItem', () {
    test('model', () {
      final model = PriceResolveItem();

      final map = model.toMap();
      final result = PriceResolveItem.fromMap(map);
    });
  });
}
