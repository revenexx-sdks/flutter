import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TemplateVariable', () {
    test('model', () {
      final model = TemplateVariable(
        description: '',
        name: '',
        placeholder: '',
        xrequired: true,
        secret: true,
        type: '',
        value: '',
      );

      final map = model.toMap();
      final result = TemplateVariable.fromMap(map);

            expect(result.description, '');
                  expect(result.name, '');
                  expect(result.placeholder, '');
                  expect(result.xrequired, true);
                  expect(result.secret, true);
                  expect(result.type, '');
                  expect(result.value, '');
          });
  });
}
