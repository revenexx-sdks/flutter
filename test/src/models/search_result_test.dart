import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SearchResult', () {
    test('model', () {
      final model = SearchResult(
        data: {},
      );

      final map = model.toMap();
      final result = SearchResult.fromMap(map);

    });
  });
}
