import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Products', () {
    test('model', () {
      final model = Products(
      );

      final map = model.toMap();
      final result = Products.fromMap(map);

    });
  });
}
