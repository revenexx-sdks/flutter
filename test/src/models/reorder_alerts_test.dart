import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ReorderAlerts', () {
    test('model', () {
      final model = ReorderAlerts(
      );

      final map = model.toMap();
      final result = ReorderAlerts.fromMap(map);

    });
  });
}
