import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AssetFamiliesCreateRequest', () {
    test('model', () {
      final model = AssetFamiliesCreateRequest(
        code: '',
      );

      final map = model.toMap();
      final result = AssetFamiliesCreateRequest.fromMap(map);

      expect(result.code, '');
    });
  });
}
