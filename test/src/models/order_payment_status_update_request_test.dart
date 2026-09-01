import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderPaymentStatusUpdateRequest', () {
    test('model', () {
      final model = OrderPaymentStatusUpdateRequest(
        status: OrderPaymentStatus.open,
      );

      final map = model.toMap();
      final result = OrderPaymentStatusUpdateRequest.fromMap(map);

      expect(result.status, OrderPaymentStatus.open);
    });
  });
}
