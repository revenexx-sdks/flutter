import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceEntriesAdjustRequest', () {
    test('model', () {
      final model = PriceEntriesAdjustRequest(
      );

      final map = model.toMap();
      final result = PriceEntriesAdjustRequest.fromMap(map);

    });
  });
}
