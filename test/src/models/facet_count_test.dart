import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FacetCount', () {
    test('model', () {
      final model = FacetCount(
        data: {},
      );

      final map = model.toMap();
      final result = FacetCount.fromMap(map);

    });
  });
}
