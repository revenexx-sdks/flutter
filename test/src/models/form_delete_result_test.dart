import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormDeleteResult', () {
    test('model', () {
      final model = FormDeleteResult(
      );

      final map = model.toMap();
      final result = FormDeleteResult.fromMap(map);

    });
  });
}
