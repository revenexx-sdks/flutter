import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormSubmissionPruneResult', () {
    test('model', () {
      final model = FormSubmissionPruneResult();

      final map = model.toMap();
      final result = FormSubmissionPruneResult.fromMap(map);
    });
  });
}
