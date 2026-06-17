import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeGroups', () {
    test('model', () {
      final model = AttributeGroups(
      );

      final map = model.toMap();
      final result = AttributeGroups.fromMap(map);

    });
  });
}
