import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Index', () {
    test('model', () {
      final model = Index(
        $createdAt: '',
        $id: '',
        $updatedAt: '',
        attributes: [],
        error: '',
        key: '',
        lengths: [],
        status: IndexStatus.available,
        type: '',
      );

      final map = model.toMap();
      final result = Index.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$id, '');
      expect(result.$updatedAt, '');
      expect(result.attributes, []);
      expect(result.error, '');
      expect(result.key, '');
      expect(result.lengths, []);
      expect(result.status, IndexStatus.available);
      expect(result.type, '');
    });
  });
}
