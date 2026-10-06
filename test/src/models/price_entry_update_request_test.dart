import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceEntryUpdateRequest', () {
    test('model', () {
      final model = PriceEntryUpdateRequest();

      final map = model.toMap();
      final result = PriceEntryUpdateRequest.fromMap(map);
    });
  });
}
