import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrganizationMetricsRefreshResponse', () {
    test('model', () {
      final model = OrganizationMetricsRefreshResponse(
      );

      final map = model.toMap();
      final result = OrganizationMetricsRefreshResponse.fromMap(map);

    });
  });
}
