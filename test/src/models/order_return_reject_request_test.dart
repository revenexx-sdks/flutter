import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderReturnRejectRequest', () {
    test('model', () {
      final model = OrderReturnRejectRequest(
      );

      final map = model.toMap();
      final result = OrderReturnRejectRequest.fromMap(map);

    });
  });
}
