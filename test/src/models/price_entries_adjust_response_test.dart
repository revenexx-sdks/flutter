import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceEntriesAdjustResponse', () {
    test('model', () {
      final model = PriceEntriesAdjustResponse();

      final map = model.toMap();
      final result = PriceEntriesAdjustResponse.fromMap(map);
    });
  });
}
