import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartAbandonSweep', () {
    test('model', () {
      final model = CartAbandonSweep();

      final map = model.toMap();
      final result = CartAbandonSweep.fromMap(map);
    });
  });
}
