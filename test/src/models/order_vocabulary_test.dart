import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderVocabulary', () {
    test('model', () {
      final model = OrderVocabulary(
      );

      final map = model.toMap();
      final result = OrderVocabulary.fromMap(map);

    });
  });
}
