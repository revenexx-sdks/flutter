import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SearchHit', () {
    test('model', () {
      final model = SearchHit(
        data: {},
      );

      final map = model.toMap();
      final result = SearchHit.fromMap(map);
    });
  });
}
