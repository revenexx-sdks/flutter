import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormUpdateRequest', () {
    test('model', () {
      final model = FormUpdateRequest();

      final map = model.toMap();
      final result = FormUpdateRequest.fromMap(map);
    });
  });
}
