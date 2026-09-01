import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InventoryReceiveRequest', () {
    test('model', () {
      final model = InventoryReceiveRequest();

      final map = model.toMap();
      final result = InventoryReceiveRequest.fromMap(map);
    });
  });
}
