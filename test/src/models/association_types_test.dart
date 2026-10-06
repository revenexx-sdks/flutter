import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AssociationTypes', () {
    test('model', () {
      final model = AssociationTypes();

      final map = model.toMap();
      final result = AssociationTypes.fromMap(map);
    });
  });
}
