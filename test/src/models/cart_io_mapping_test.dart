import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartIoMapping', () {
    test('model', () {
      final model = CartIoMapping();

      final map = model.toMap();
      final result = CartIoMapping.fromMap(map);
    });
  });
}
