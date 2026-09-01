import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('IoProfileCreateRequest', () {
    test('model', () {
      final model = IoProfileCreateRequest(
        direction: CartIoDirection.ximport,
        name: '',
      );

      final map = model.toMap();
      final result = IoProfileCreateRequest.fromMap(map);

            expect(result.direction, CartIoDirection.ximport);
                  expect(result.name, '');
          });
  });
}
