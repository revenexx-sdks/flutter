import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FrameworkList', () {
    test('model', () {
      final model = FrameworkList(
        frameworks: [],
        total: ,
      );

      final map = model.toMap();
      final result = FrameworkList.fromMap(map);

            expect(result.frameworks, []);
                  expect(result.total, );
          });
  });
}
