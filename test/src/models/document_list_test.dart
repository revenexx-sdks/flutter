import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DocumentList', () {
    test('model', () {
      final model = DocumentList(
        documents: [],
        total: 0,
      );

      final map = model.toMap();
      final result = DocumentList.fromMap(map);

            expect(result.documents, []);
                  expect(result.total, 0);
          });
  });
}
