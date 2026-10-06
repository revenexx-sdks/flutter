import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartConversion', () {
    test('model', () {
      final model = CartConversion();

      final map = model.toMap();
      final result = CartConversion.fromMap(map);
    });
  });
}
