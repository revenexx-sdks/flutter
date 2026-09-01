import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingServiceLevelUpdateRequest', () {
    test('model', () {
      final model = ShippingServiceLevelUpdateRequest();

      final map = model.toMap();
      final result = ShippingServiceLevelUpdateRequest.fromMap(map);
    });
  });
}
