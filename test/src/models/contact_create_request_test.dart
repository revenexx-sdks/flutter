import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ContactCreateRequest', () {
    test('model', () {
      final model = ContactCreateRequest(
        email: '',
      );

      final map = model.toMap();
      final result = ContactCreateRequest.fromMap(map);

            expect(result.email, '');
          });
  });
}
