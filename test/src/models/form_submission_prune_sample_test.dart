import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormSubmissionPruneSample', () {
    test('model', () {
      final model = FormSubmissionPruneSample(
      );

      final map = model.toMap();
      final result = FormSubmissionPruneSample.fromMap(map);

    });
  });
}
