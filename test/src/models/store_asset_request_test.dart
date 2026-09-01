import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StoreAssetRequest', () {
    test('model', () {
      final model = StoreAssetRequest(
        file: '',
      );

      final map = model.toMap();
      final result = StoreAssetRequest.fromMap(map);

      expect(result.file, '');
    });
  });
}
