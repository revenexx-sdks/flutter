import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FamilyVariantsUpdateRequest', () {
    test('model', () {
      final model = FamilyVariantsUpdateRequest();

      final map = model.toMap();
      final result = FamilyVariantsUpdateRequest.fromMap(map);
    });
  });
}
