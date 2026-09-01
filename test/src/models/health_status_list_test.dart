import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HealthStatusList', () {
    test('model', () {
      final model = HealthStatusList(
        statuses: [],
        total: 0,
      );

      final map = model.toMap();
      final result = HealthStatusList.fromMap(map);

            expect(result.statuses, []);
                  expect(result.total, 0);
          });
  });
}
