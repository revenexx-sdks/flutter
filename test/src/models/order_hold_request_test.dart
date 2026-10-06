import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderHoldRequest', () {
    test('model', () {
      final model = OrderHoldRequest();

      final map = model.toMap();
      final result = OrderHoldRequest.fromMap(map);
    });
  });
}
