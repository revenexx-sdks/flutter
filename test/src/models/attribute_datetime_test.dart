import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeDatetime', () {
    test('model', () {
      final model = AttributeDatetime(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        format: '',
        key: '',
        xrequired: true,
        status: AttributeDatetimeStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = AttributeDatetime.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$updatedAt, '');
                  expect(result.error, '');
                  expect(result.format, '');
                  expect(result.key, '');
                  expect(result.xrequired, true);
                  expect(result.status, AttributeDatetimeStatus.available);
                  expect(result.type, '');
          });
  });
}
