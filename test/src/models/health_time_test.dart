import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HealthTime', () {
    test('model', () {
      final model = HealthTime(
        diff: ,
        localTime: ,
        remoteTime: ,
      );

      final map = model.toMap();
      final result = HealthTime.fromMap(map);

            expect(result.diff, );
                  expect(result.localTime, );
                  expect(result.remoteTime, );
          });
  });
}
