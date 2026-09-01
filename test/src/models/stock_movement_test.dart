import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StockMovement', () {
    test('model', () {
      final model = StockMovement();

      final map = model.toMap();
      final result = StockMovement.fromMap(map);
    });
  });
}
