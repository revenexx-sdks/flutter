import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SeedResult', () {
    test('model', () {
      final model = SeedResult(
      );

      final map = model.toMap();
      final result = SeedResult.fromMap(map);

    });
  });
}
