import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SearchParameters', () {
    test('model', () {
      final model = SearchParameters(
        data: {},
      );

      final map = model.toMap();
      final result = SearchParameters.fromMap(map);
    });
  });
}
