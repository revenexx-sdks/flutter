import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeList', () {
    test('model', () {
      final model = AttributeList(
        attributes: [],
        total: 0,
      );

      final map = model.toMap();
      final result = AttributeList.fromMap(map);

      expect(result.attributes, []);
      expect(result.total, 0);
    });
  });
}
