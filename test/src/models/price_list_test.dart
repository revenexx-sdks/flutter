import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceList', () {
    test('model', () {
      final model = PriceList(
      );

      final map = model.toMap();
      final result = PriceList.fromMap(map);

    });
  });
}
