import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartItemUpdateRequest', () {
    test('model', () {
      final model = CartItemUpdateRequest(
      );

      final map = model.toMap();
      final result = CartItemUpdateRequest.fromMap(map);

    });
  });
}
