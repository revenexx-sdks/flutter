import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SeedRequest', () {
    test('model', () {
      final model = SeedRequest(
      );

      final map = model.toMap();
      final result = SeedRequest.fromMap(map);

    });
  });
}
