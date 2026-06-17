import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('EditorState', () {
    test('model', () {
      final model = EditorState(
      );

      final map = model.toMap();
      final result = EditorState.fromMap(map);

    });
  });
}
