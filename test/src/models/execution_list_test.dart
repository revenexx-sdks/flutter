import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ExecutionList', () {
    test('model', () {
      final model = ExecutionList(
        executions: [],
        total: ,
      );

      final map = model.toMap();
      final result = ExecutionList.fromMap(map);

            expect(result.executions, []);
                  expect(result.total, );
          });
  });
}
