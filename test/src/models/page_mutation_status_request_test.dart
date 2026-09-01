import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PageMutationStatusRequest', () {
    test('model', () {
      final model = PageMutationStatusRequest(
        enabled: true,
        index: 0,
      );

      final map = model.toMap();
      final result = PageMutationStatusRequest.fromMap(map);

      expect(result.enabled, true);
      expect(result.index, 0);
    });
  });
}
