import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormSubmissionPruneRequest', () {
    test('model', () {
      final model = FormSubmissionPruneRequest(
      );

      final map = model.toMap();
      final result = FormSubmissionPruneRequest.fromMap(map);

    });
  });
}
