import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Address', () {
    test('model', () {
      final model = Address(
      );

      final map = model.toMap();
      final result = Address.fromMap(map);

    });
  });
}
