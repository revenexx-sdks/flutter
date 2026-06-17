import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PhoneList', () {
    test('model', () {
      final model = PhoneList(
        phones: [],
        total: ,
      );

      final map = model.toMap();
      final result = PhoneList.fromMap(map);

            expect(result.phones, []);
                  expect(result.total, );
          });
  });
}
