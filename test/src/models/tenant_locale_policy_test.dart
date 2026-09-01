import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TenantLocalePolicy', () {
    test('model', () {
      final model = TenantLocalePolicy(
      );

      final map = model.toMap();
      final result = TenantLocalePolicy.fromMap(map);

    });
  });
}
