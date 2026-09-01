import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LocaleCodeList', () {
    test('model', () {
      final model = LocaleCodeList(
        localeCodes: [],
        total: 0,
      );

      final map = model.toMap();
      final result = LocaleCodeList.fromMap(map);

      expect(result.localeCodes, []);
      expect(result.total, 0);
    });
  });
}
