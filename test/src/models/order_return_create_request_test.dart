import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderReturnCreateRequest', () {
    test('model', () {
      final model = OrderReturnCreateRequest(
      );

      final map = model.toMap();
      final result = OrderReturnCreateRequest.fromMap(map);

    });
  });
}
