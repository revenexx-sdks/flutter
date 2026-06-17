import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('VariableList', () {
    test('model', () {
      final model = VariableList(
        total: ,
        variables: [],
      );

      final map = model.toMap();
      final result = VariableList.fromMap(map);

            expect(result.total, );
                  expect(result.variables, []);
          });
  });
}
