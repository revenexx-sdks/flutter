import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrganizationMetrics', () {
    test('model', () {
      final model = OrganizationMetrics(
      );

      final map = model.toMap();
      final result = OrganizationMetrics.fromMap(map);

    });
  });
}
