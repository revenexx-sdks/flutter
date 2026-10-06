import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceListRef', () {
    test('model', () {
      final model = PriceListRef();

      final map = model.toMap();
      final result = PriceListRef.fromMap(map);
    });
  });
}
