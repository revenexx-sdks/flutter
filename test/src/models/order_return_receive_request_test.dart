import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderReturnReceiveRequest', () {
    test('model', () {
      final model = OrderReturnReceiveRequest(
      );

      final map = model.toMap();
      final result = OrderReturnReceiveRequest.fromMap(map);

    });
  });
}
