import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CollectionList', () {
    test('model', () {
      final model = CollectionList(
        collections: [],
        total: ,
      );

      final map = model.toMap();
      final result = CollectionList.fromMap(map);

            expect(result.collections, []);
                  expect(result.total, );
          });
  });
}
