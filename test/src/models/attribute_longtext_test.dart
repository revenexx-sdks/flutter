import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeLongtext', () {
    test('model', () {
      final model = AttributeLongtext(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        key: '',
        xrequired: true,
        status: AttributeLongtextStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = AttributeLongtext.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$updatedAt, '');
                  expect(result.error, '');
                  expect(result.key, '');
                  expect(result.xrequired, true);
                  expect(result.status, AttributeLongtextStatus.available);
                  expect(result.type, '');
          });
  });
}
