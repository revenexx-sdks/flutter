import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('IdentityList', () {
    test('model', () {
      final model = IdentityList(
        identities: [],
        total: 0,
      );

      final map = model.toMap();
      final result = IdentityList.fromMap(map);

            expect(result.identities, []);
                  expect(result.total, 0);
          });
  });
}
