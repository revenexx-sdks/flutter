import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('VocabularyValue', () {
    test('model', () {
      final model = VocabularyValue();

      final map = model.toMap();
      final result = VocabularyValue.fromMap(map);
    });
  });
}
