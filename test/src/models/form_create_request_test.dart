import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormCreateRequest', () {
    test('model', () {
      final model = FormCreateRequest(
        name: '',
        slug: '',
      );

      final map = model.toMap();
      final result = FormCreateRequest.fromMap(map);

            expect(result.name, '');
                  expect(result.slug, '');
          });
  });
}
