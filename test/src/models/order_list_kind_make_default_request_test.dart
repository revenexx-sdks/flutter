import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderListKindMakeDefaultRequest', () {
    test('model', () {
      final model = OrderListKindMakeDefaultRequest(
      );

      final map = model.toMap();
      final result = OrderListKindMakeDefaultRequest.fromMap(map);

    });
  });
}
