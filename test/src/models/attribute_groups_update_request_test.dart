import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeGroupsUpdateRequest', () {
    test('model', () {
      final model = AttributeGroupsUpdateRequest();

      final map = model.toMap();
      final result = AttributeGroupsUpdateRequest.fromMap(map);
    });
  });
}
