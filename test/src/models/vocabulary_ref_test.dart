import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('VocabularyRef', () {
    test('model', () {
      final model = VocabularyRef(
      );

      final map = model.toMap();
      final result = VocabularyRef.fromMap(map);

    });
  });
}
