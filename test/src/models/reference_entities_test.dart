import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ReferenceEntities', () {
    test('model', () {
      final model = ReferenceEntities(
      );

      final map = model.toMap();
      final result = ReferenceEntities.fromMap(map);

    });
  });
}
