import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MenuUpsertRequest', () {
    test('model', () {
      final model = MenuUpsertRequest(
        label: '',
        menuKey: '',
      );

      final map = model.toMap();
      final result = MenuUpsertRequest.fromMap(map);

      expect(result.label, '');
      expect(result.menuKey, '');
    });
  });
}
