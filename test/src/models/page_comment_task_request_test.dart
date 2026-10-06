import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PageCommentTaskRequest', () {
    test('model', () {
      final model = PageCommentTaskRequest(
        taskIndex: 0,
      );

      final map = model.toMap();
      final result = PageCommentTaskRequest.fromMap(map);

      expect(result.taskIndex, 0);
    });
  });
}
