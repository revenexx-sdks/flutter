import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceListMakeDefaultRequest', () {
    test('model', () {
      final model = PriceListMakeDefaultRequest(
      );

      final map = model.toMap();
      final result = PriceListMakeDefaultRequest.fromMap(map);

    });
  });
}
