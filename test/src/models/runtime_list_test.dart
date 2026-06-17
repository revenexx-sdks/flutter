import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RuntimeList', () {
    test('model', () {
      final model = RuntimeList(
        runtimes: [],
        total: ,
      );

      final map = model.toMap();
      final result = RuntimeList.fromMap(map);

            expect(result.runtimes, []);
                  expect(result.total, );
          });
  });
}
