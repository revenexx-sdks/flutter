import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartItemCreateRequest', () {
    test('model', () {
      final model = CartItemCreateRequest(
      );

      final map = model.toMap();
      final result = CartItemCreateRequest.fromMap(map);

    });
  });
}
