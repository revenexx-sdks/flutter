import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceEntriesLadderRequest', () {
    test('model', () {
      final model = PriceEntriesLadderRequest(
        base_price: 0,
      );

      final map = model.toMap();
      final result = PriceEntriesLadderRequest.fromMap(map);

            expect(result.base_price, 0);
          });
  });
}
