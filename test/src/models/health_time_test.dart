import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HealthTime', () {
    test('model', () {
      final model = HealthTime(
        diff: 0,
        localTime: 0,
        remoteTime: 0,
      );

      final map = model.toMap();
      final result = HealthTime.fromMap(map);

      expect(result.diff, 0);
      expect(result.localTime, 0);
      expect(result.remoteTime, 0);
    });
  });
}
