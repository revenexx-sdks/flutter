import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AssetFamiliesUpdateRequest', () {
    test('model', () {
      final model = AssetFamiliesUpdateRequest();

      final map = model.toMap();
      final result = AssetFamiliesUpdateRequest.fromMap(map);
    });
  });
}
