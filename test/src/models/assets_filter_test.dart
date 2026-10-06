import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AssetsFilter', () {
    test('model', () {
      final model = AssetsFilter(
        data: {},
      );

      final map = model.toMap();
      final result = AssetsFilter.fromMap(map);
    });
  });
}
