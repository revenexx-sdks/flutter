import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceEntryCreateRequest', () {
    test('model', () {
      final model = PriceEntryCreateRequest(
      );

      final map = model.toMap();
      final result = PriceEntryCreateRequest.fromMap(map);

    });
  });
}
