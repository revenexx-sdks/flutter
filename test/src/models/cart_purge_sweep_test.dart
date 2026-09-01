import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartPurgeSweep', () {
    test('model', () {
      final model = CartPurgeSweep();

      final map = model.toMap();
      final result = CartPurgeSweep.fromMap(map);
    });
  });
}
