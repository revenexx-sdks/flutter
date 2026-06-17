import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FamilyAttributesUpdateRequest', () {
    test('model', () {
      final model = FamilyAttributesUpdateRequest(
      );

      final map = model.toMap();
      final result = FamilyAttributesUpdateRequest.fromMap(map);

    });
  });
}
