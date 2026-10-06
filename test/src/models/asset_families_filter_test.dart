import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AssetFamiliesFilter', () {
    test('model', () {
      final model = AssetFamiliesFilter(
        data: {},
      );

      final map = model.toMap();
      final result = AssetFamiliesFilter.fromMap(map);
    });
  });
}
