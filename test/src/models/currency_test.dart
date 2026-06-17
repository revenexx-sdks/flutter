import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Currency', () {
    test('model', () {
      final model = Currency(
        code: '',
        decimalDigits: ,
        name: '',
        namePlural: '',
        rounding: ,
        symbol: '',
        symbolNative: '',
      );

      final map = model.toMap();
      final result = Currency.fromMap(map);

            expect(result.code, '');
                  expect(result.decimalDigits, );
                  expect(result.name, '');
                  expect(result.namePlural, '');
                  expect(result.rounding, );
                  expect(result.symbol, '');
                  expect(result.symbolNative, '');
          });
  });
}
