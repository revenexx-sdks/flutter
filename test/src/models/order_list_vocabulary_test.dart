import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderListVocabulary', () {
    test('model', () {
      final model = OrderListVocabulary();

      final map = model.toMap();
      final result = OrderListVocabulary.fromMap(map);
    });
  });
}
