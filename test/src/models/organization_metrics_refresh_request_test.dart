import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrganizationMetricsRefreshRequest', () {
    test('model', () {
      final model = OrganizationMetricsRefreshRequest(
      );

      final map = model.toMap();
      final result = OrganizationMetricsRefreshRequest.fromMap(map);

    });
  });
}
