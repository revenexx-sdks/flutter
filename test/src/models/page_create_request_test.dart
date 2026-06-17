import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PageCreateRequest', () {
    test('model', () {
      final model = PageCreateRequest(
        title: '',
      );

      final map = model.toMap();
      final result = PageCreateRequest.fromMap(map);

            expect(result.title, '');
          });
  });
}
