import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderCompleteRequest', () {
    test('model', () {
      final model = OrderCompleteRequest();

      final map = model.toMap();
      final result = OrderCompleteRequest.fromMap(map);
    });
  });
}
