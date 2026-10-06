import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeGroupsFilter', () {
    test('model', () {
      final model = AttributeGroupsFilter(
        data: {},
      );

      final map = model.toMap();
      final result = AttributeGroupsFilter.fromMap(map);
    });
  });
}
