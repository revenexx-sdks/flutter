import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PageCommentItem', () {
    test('model', () {
      final model = PageCommentItem(
      );

      final map = model.toMap();
      final result = PageCommentItem.fromMap(map);

    });
  });
}
