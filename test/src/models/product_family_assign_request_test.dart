import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductFamilyAssignRequest', () {
    test('model', () {
      final model = ProductFamilyAssignRequest();

      final map = model.toMap();
      final result = ProductFamilyAssignRequest.fromMap(map);
    });
  });
}
