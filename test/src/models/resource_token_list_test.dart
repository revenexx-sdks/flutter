import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ResourceTokenList', () {
    test('model', () {
      final model = ResourceTokenList(
        tokens: [],
        total: ,
      );

      final map = model.toMap();
      final result = ResourceTokenList.fromMap(map);

            expect(result.tokens, []);
                  expect(result.total, );
          });
  });
}
