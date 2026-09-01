import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Currency', () {
    test('model', () {
      final model = Currency(
        code: '',
        decimalDigits: 0,
        name: '',
        namePlural: '',
        rounding: 0,
        symbol: '',
        symbolNative: '',
      );

      final map = model.toMap();
      final result = Currency.fromMap(map);

            expect(result.code, '');
                  expect(result.decimalDigits, 0);
                  expect(result.name, '');
                  expect(result.namePlural, '');
                  expect(result.rounding, 0);
                  expect(result.symbol, '');
                  expect(result.symbolNative, '');
          });
  });
}
