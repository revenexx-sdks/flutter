import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Cart', () {
    test('model', () {
      final model = Cart();

      final map = model.toMap();
      final result = Cart.fromMap(map);
    });
  });
}
