import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormSubmissionCreateRequest', () {
    test('model', () {
      final model = FormSubmissionCreateRequest(
        data: {},
        form_id: '',
      );

      final map = model.toMap();
      final result = FormSubmissionCreateRequest.fromMap(map);

            expect(result.data, {});
                  expect(result.form_id, '');
          });
  });
}
