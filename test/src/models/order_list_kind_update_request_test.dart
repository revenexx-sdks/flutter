import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderListKindUpdateRequest', () {
    test('model', () {
      final model = OrderListKindUpdateRequest(
      );

      final map = model.toMap();
      final result = OrderListKindUpdateRequest.fromMap(map);

    });
  });
}
