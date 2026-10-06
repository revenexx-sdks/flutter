import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Message2', () {
    test('model', () {
      final model = Message2(
        $createdAt: '',
        $id: '',
        $updatedAt: '',
        data: {},
        deliveredTotal: 0,
        providerType: '',
        status: Message2Status.draft,
        targets: [],
        topics: [],
        users: [],
      );

      final map = model.toMap();
      final result = Message2.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$id, '');
      expect(result.$updatedAt, '');
      expect(result.data, {});
      expect(result.deliveredTotal, 0);
      expect(result.providerType, '');
      expect(result.status, Message2Status.draft);
      expect(result.targets, []);
      expect(result.topics, []);
      expect(result.users, []);
    });
  });
}
