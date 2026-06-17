import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MutationResponse', () {
    test('model', () {
      final model = MutationResponse(
      );

      final map = model.toMap();
      final result = MutationResponse.fromMap(map);

    });
  });
}
