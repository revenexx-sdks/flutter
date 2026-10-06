import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AssetFamilies', () {
    test('model', () {
      final model = AssetFamilies();

      final map = model.toMap();
      final result = AssetFamilies.fromMap(map);
    });
  });
}
