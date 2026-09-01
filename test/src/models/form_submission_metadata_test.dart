import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormSubmissionMetadata', () {
    test('model', () {
      final model = FormSubmissionMetadata(
        data: {},
      );

      final map = model.toMap();
      final result = FormSubmissionMetadata.fromMap(map);
    });
  });
}
