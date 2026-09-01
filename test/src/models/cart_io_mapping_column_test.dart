import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartIoMappingColumn', () {
    test('model', () {
      final model = CartIoMappingColumn(
        from: '',
        to: '',
      );

      final map = model.toMap();
      final result = CartIoMappingColumn.fromMap(map);

            expect(result.from, '');
                  expect(result.to, '');
          });
  });
}
