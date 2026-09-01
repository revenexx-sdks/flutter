import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartItem', () {
    test('model', () {
      final model = CartItem(
      );

      final map = model.toMap();
      final result = CartItem.fromMap(map);

    });
  });
}
