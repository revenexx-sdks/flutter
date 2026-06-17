import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Message', () {
    test('model', () {
      final model = Message(
        $createdAt: '',
        $id: '',
        $updatedAt: '',
        data: {},
        deliveredTotal: ,
        providerType: '',
        status: MessageStatus.draft,
        targets: [],
        topics: [],
        users: [],
      );

      final map = model.toMap();
      final result = Message.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$id, '');
                  expect(result.$updatedAt, '');
                  expect(result.data, {});
                  expect(result.deliveredTotal, );
                  expect(result.providerType, '');
                  expect(result.status, MessageStatus.draft);
                  expect(result.targets, []);
                  expect(result.topics, []);
                  expect(result.users, []);
          });
  });
}
