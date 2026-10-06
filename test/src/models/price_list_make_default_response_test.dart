import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceListMakeDefaultResponse', () {
    test('model', () {
      final model = PriceListMakeDefaultResponse();

      final map = model.toMap();
      final result = PriceListMakeDefaultResponse.fromMap(map);
    });
  });
}
