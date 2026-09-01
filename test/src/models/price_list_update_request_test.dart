import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceListUpdateRequest', () {
    test('model', () {
      final model = PriceListUpdateRequest();

      final map = model.toMap();
      final result = PriceListUpdateRequest.fromMap(map);
    });
  });
}
