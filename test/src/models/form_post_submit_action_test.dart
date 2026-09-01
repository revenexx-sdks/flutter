import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormPostSubmitAction', () {
    test('model', () {
      final model = FormPostSubmitAction(
        data: {},
      );

      final map = model.toMap();
      final result = FormPostSubmitAction.fromMap(map);
    });
  });
}
