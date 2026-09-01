import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AddressTypeRowCreateRequest', () {
    test('model', () {
      final model = AddressTypeRowCreateRequest(
        code: '',
        title: '',
      );

      final map = model.toMap();
      final result = AddressTypeRowCreateRequest.fromMap(map);

            expect(result.code, '');
                  expect(result.title, '');
          });
  });
}
