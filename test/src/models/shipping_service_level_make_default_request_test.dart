import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ShippingServiceLevelMakeDefaultRequest', () {
    test('model', () {
      final model = ShippingServiceLevelMakeDefaultRequest();

      final map = model.toMap();
      final result = ShippingServiceLevelMakeDefaultRequest.fromMap(map);
    });
  });
}
