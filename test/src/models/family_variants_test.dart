import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FamilyVariants', () {
    test('model', () {
      final model = FamilyVariants();

      final map = model.toMap();
      final result = FamilyVariants.fromMap(map);
    });
  });
}
