import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('IoEntity', () {
    test('model', () {
      final model = IoEntity();

      final map = model.toMap();
      final result = IoEntity.fromMap(map);
    });
  });
}
