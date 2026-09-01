import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AssociationTypesUpdateRequest', () {
    test('model', () {
      final model = AssociationTypesUpdateRequest();

      final map = model.toMap();
      final result = AssociationTypesUpdateRequest.fromMap(map);
    });
  });
}
