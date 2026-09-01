import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PageCommentCreateRequest', () {
    test('model', () {
      final model = PageCommentCreateRequest(
        body: '',
      );

      final map = model.toMap();
      final result = PageCommentCreateRequest.fromMap(map);

            expect(result.body, '');
          });
  });
}
