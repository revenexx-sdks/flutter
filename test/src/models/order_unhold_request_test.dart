import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderUnholdRequest', () {
    test('model', () {
      final model = OrderUnholdRequest(
      );

      final map = model.toMap();
      final result = OrderUnholdRequest.fromMap(map);

    });
  });
}
