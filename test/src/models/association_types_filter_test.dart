import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AssociationTypesFilter', () {
    test('model', () {
      final model = AssociationTypesFilter(
        data: {},
      );

      final map = model.toMap();
      final result = AssociationTypesFilter.fromMap(map);

    });
  });
}
