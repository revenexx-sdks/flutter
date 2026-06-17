import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Comment', () {
    test('model', () {
      final model = Comment(
      );

      final map = model.toMap();
      final result = Comment.fromMap(map);

    });
  });
}
