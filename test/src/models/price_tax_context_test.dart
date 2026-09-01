import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PriceTaxContext', () {
    test('model', () {
      final model = PriceTaxContext();

      final map = model.toMap();
      final result = PriceTaxContext.fromMap(map);
    });
  });
}
