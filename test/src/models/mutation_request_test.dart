import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MutationRequest', () {
    test('model', () {
      final model = MutationRequest(
        plugin: '',
      );

      final map = model.toMap();
      final result = MutationRequest.fromMap(map);

      expect(result.plugin, '');
    });
  });
}
