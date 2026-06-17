import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartCreateRequest', () {
    test('model', () {
      final model = CartCreateRequest(
      );

      final map = model.toMap();
      final result = CartCreateRequest.fromMap(map);

    });
  });
}
