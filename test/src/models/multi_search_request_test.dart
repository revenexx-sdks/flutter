import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MultiSearchRequest', () {
    test('model', () {
      final model = MultiSearchRequest(
        searches: [],
        data: {},
      );

      final map = model.toMap();
      final result = MultiSearchRequest.fromMap(map);

      expect(result.searches, []);
    });
  });
}
