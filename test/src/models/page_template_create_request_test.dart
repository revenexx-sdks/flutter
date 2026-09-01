import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PageTemplateCreateRequest', () {
    test('model', () {
      final model = PageTemplateCreateRequest(
        label: '',
        uuids: [],
      );

      final map = model.toMap();
      final result = PageTemplateCreateRequest.fromMap(map);

            expect(result.label, '');
                  expect(result.uuids, []);
          });
  });
}
