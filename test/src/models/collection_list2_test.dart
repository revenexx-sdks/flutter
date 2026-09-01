import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CollectionList2', () {
    test('model', () {
      final model = CollectionList2(
        collections: [],
        total: 0,
      );

      final map = model.toMap();
      final result = CollectionList2.fromMap(map);

      expect(result.collections, []);
      expect(result.total, 0);
    });
  });
}
