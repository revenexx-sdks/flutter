import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SpecificationList', () {
    test('model', () {
      final model = SpecificationList(
        specifications: [],
        total: 0,
      );

      final map = model.toMap();
      final result = SpecificationList.fromMap(map);

      expect(result.specifications, []);
      expect(result.total, 0);
    });
  });
}
