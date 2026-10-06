import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Vocabulary', () {
    test('model', () {
      final model = Vocabulary();

      final map = model.toMap();
      final result = Vocabulary.fromMap(map);
    });
  });
}
