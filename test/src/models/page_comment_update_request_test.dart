import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PageCommentUpdateRequest', () {
    test('model', () {
      final model = PageCommentUpdateRequest(
        body: '',
      );

      final map = model.toMap();
      final result = PageCommentUpdateRequest.fromMap(map);

      expect(result.body, '');
    });
  });
}
