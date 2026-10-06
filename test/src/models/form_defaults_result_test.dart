import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormDefaultsResult', () {
    test('model', () {
      final model = FormDefaultsResult();

      final map = model.toMap();
      final result = FormDefaultsResult.fromMap(map);
    });
  });
}
