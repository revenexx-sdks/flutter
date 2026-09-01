import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrganizationMetricsFreshness', () {
    test('model', () {
      final model = OrganizationMetricsFreshness();

      final map = model.toMap();
      final result = OrganizationMetricsFreshness.fromMap(map);
    });
  });
}
