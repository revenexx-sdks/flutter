import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HealthQueue', () {
    test('model', () {
      final model = HealthQueue(
        size: 0,
      );

      final map = model.toMap();
      final result = HealthQueue.fromMap(map);

            expect(result.size, 0);
          });
  });
}
