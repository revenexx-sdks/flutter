import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderListCreateRequest', () {
    test('model', () {
      final model = OrderListCreateRequest(
        name: '',
        owner_id: '',
        owner_name: '',
      );

      final map = model.toMap();
      final result = OrderListCreateRequest.fromMap(map);

            expect(result.name, '');
                  expect(result.owner_id, '');
                  expect(result.owner_name, '');
          });
  });
}
