import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Topic', () {
    test('model', () {
      final model = Topic(
        $createdAt: '',
        $id: '',
        $updatedAt: '',
        emailTotal: 0,
        name: '',
        pushTotal: 0,
        smsTotal: 0,
        subscribe: [],
      );

      final map = model.toMap();
      final result = Topic.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$id, '');
      expect(result.$updatedAt, '');
      expect(result.emailTotal, 0);
      expect(result.name, '');
      expect(result.pushTotal, 0);
      expect(result.smsTotal, 0);
      expect(result.subscribe, []);
    });
  });
}
