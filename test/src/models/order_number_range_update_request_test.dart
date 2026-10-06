import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderNumberRangeUpdateRequest', () {
    test('model', () {
      final model = OrderNumberRangeUpdateRequest();

      final map = model.toMap();
      final result = OrderNumberRangeUpdateRequest.fromMap(map);
    });
  });
}
