import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HealthAntivirus', () {
    test('model', () {
      final model = HealthAntivirus(
        status: HealthAntivirusStatus.disabled,
        version: '',
      );

      final map = model.toMap();
      final result = HealthAntivirus.fromMap(map);

      expect(result.status, HealthAntivirusStatus.disabled);
      expect(result.version, '');
    });
  });
}
