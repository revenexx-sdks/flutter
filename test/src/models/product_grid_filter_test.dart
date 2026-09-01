import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductGridFilter', () {
    test('model', () {
      final model = ProductGridFilter(
      );

      final map = model.toMap();
      final result = ProductGridFilter.fromMap(map);

    });
  });
}
