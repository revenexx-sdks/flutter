import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ContactEventKindCreateRequest', () {
    test('model', () {
      final model = ContactEventKindCreateRequest(
        code: '',
        title: '',
      );

      final map = model.toMap();
      final result = ContactEventKindCreateRequest.fromMap(map);

            expect(result.code, '');
                  expect(result.title, '');
          });
  });
}
