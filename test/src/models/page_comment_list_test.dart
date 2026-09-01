import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PageCommentList', () {
    test('model', () {
      final model = PageCommentList(
      );

      final map = model.toMap();
      final result = PageCommentList.fromMap(map);

    });
  });
}
