import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TenantLocaleKeys', () {
    test('model', () {
      final model = TenantLocaleKeys();

      final map = model.toMap();
      final result = TenantLocaleKeys.fromMap(map);
    });
  });
}
