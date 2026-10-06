import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MenuUpdateRequest', () {
    test('model', () {
      final model = MenuUpdateRequest();

      final map = model.toMap();
      final result = MenuUpdateRequest.fromMap(map);
    });
  });
}
