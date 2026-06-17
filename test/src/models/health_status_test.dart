import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HealthStatus', () {
    test('model', () {
      final model = HealthStatus(
        name: '',
        ping: ,
        status: HealthStatusStatus.pass,
      );

      final map = model.toMap();
      final result = HealthStatus.fromMap(map);

            expect(result.name, '');
                  expect(result.ping, );
                  expect(result.status, HealthStatusStatus.pass);
          });
  });
}
