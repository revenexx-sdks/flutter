import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormActionMapping', () {
    test('model', () {
      final model = FormActionMapping();

      final map = model.toMap();
      final result = FormActionMapping.fromMap(map);
    });
  });
}
