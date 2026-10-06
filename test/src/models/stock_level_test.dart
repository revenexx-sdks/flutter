import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StockLevel', () {
    test('model', () {
      final model = StockLevel();

      final map = model.toMap();
      final result = StockLevel.fromMap(map);
    });
  });
}
