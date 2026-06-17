import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FamilyAttributes', () {
    test('model', () {
      final model = FamilyAttributes(
      );

      final map = model.toMap();
      final result = FamilyAttributes.fromMap(map);

    });
  });
}
