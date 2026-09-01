import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AssetsCreateRequest', () {
    test('model', () {
      final model = AssetsCreateRequest(
        asset_family_id: '',
        code: '',
      );

      final map = model.toMap();
      final result = AssetsCreateRequest.fromMap(map);

      expect(result.asset_family_id, '');
      expect(result.code, '');
    });
  });
}
