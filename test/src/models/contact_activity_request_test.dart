import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ContactActivityRequest', () {
    test('model', () {
      final model = ContactActivityRequest(
        subject: '',
      );

      final map = model.toMap();
      final result = ContactActivityRequest.fromMap(map);

            expect(result.subject, '');
          });
  });
}
