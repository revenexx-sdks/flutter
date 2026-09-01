import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormSubmission', () {
    test('model', () {
      final model = FormSubmission();

      final map = model.toMap();
      final result = FormSubmission.fromMap(map);
    });
  });
}
