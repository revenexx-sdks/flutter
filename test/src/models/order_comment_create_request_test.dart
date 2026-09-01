import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderCommentCreateRequest', () {
    test('model', () {
      final model = OrderCommentCreateRequest(
        body: '',
      );

      final map = model.toMap();
      final result = OrderCommentCreateRequest.fromMap(map);

      expect(result.body, '');
    });
  });
}
