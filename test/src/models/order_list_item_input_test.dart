import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderListItemInput', () {
    test('model', () {
      final model = OrderListItemInput(
        name: '',
      );

      final map = model.toMap();
      final result = OrderListItemInput.fromMap(map);

            expect(result.name, '');
          });
  });
}
