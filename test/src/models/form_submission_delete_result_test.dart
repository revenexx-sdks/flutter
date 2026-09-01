import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormSubmissionDeleteResult', () {
    test('model', () {
      final model = FormSubmissionDeleteResult(
      );

      final map = model.toMap();
      final result = FormSubmissionDeleteResult.fromMap(map);

    });
  });
}
