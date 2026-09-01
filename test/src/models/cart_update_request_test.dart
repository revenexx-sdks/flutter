import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartUpdateRequest', () {
    test('model', () {
      final model = CartUpdateRequest();

      final map = model.toMap();
      final result = CartUpdateRequest.fromMap(map);
    });
  });
}
