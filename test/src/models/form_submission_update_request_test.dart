import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormSubmissionUpdateRequest', () {
    test('model', () {
      final model = FormSubmissionUpdateRequest();

      final map = model.toMap();
      final result = FormSubmissionUpdateRequest.fromMap(map);
    });
  });
}
