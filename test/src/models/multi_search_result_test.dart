import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MultiSearchResult', () {
    test('model', () {
      final model = MultiSearchResult(
        results: [],
      );

      final map = model.toMap();
      final result = MultiSearchResult.fromMap(map);

      expect(result.results, []);
    });
  });
}
