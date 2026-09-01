import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceEntry', () {
    test('model', () {
      final model = PriceEntry(
      );

      final map = model.toMap();
      final result = PriceEntry.fromMap(map);

    });
  });
}
