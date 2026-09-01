import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormSettings', () {
    test('model', () {
      final model = FormSettings(
        data: {},
      );

      final map = model.toMap();
      final result = FormSettings.fromMap(map);

    });
  });
}
