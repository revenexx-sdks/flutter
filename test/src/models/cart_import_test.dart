import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartImport', () {
    test('model', () {
      final model = CartImport(
      );

      final map = model.toMap();
      final result = CartImport.fromMap(map);

    });
  });
}
