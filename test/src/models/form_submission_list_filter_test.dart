import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormSubmissionListFilter', () {
    test('model', () {
      final model = FormSubmissionListFilter(
        data: {},
      );

      final map = model.toMap();
      final result = FormSubmissionListFilter.fromMap(map);
    });
  });
}
