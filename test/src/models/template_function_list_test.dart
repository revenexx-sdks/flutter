import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TemplateFunctionList', () {
    test('model', () {
      final model = TemplateFunctionList(
        templates: [],
        total: 0,
      );

      final map = model.toMap();
      final result = TemplateFunctionList.fromMap(map);

            expect(result.templates, []);
                  expect(result.total, 0);
          });
  });
}
