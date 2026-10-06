import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderItemCreateRequest', () {
    test('model', () {
      final model = OrderItemCreateRequest();

      final map = model.toMap();
      final result = OrderItemCreateRequest.fromMap(map);
    });
  });
}
