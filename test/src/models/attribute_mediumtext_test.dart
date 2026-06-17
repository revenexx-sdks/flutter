import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeMediumtext', () {
    test('model', () {
      final model = AttributeMediumtext(
        $createdAt: '',
        $updatedAt: '',
        error: '',
        key: '',
        xrequired: true,
        status: AttributeMediumtextStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = AttributeMediumtext.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$updatedAt, '');
                  expect(result.error, '');
                  expect(result.key, '');
                  expect(result.xrequired, true);
                  expect(result.status, AttributeMediumtextStatus.available);
                  expect(result.type, '');
          });
  });
}
