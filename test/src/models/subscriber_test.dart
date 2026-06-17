import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Subscriber', () {
    test('model', () {
      final model = Subscriber(
        $createdAt: '',
        $id: '',
        $updatedAt: '',
        providerType: '',
        target: Target(
    $createdAt: '',
    $id: '',
    $updatedAt: '',
    expired: true,
    identifier: '',
    name: '',
    providerType: '',
    userId: '',
  ),
        targetId: '',
        topicId: '',
        userId: '',
        userName: '',
      );

      final map = model.toMap();
      final result = Subscriber.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$id, '');
                  expect(result.$updatedAt, '');
                  expect(result.providerType, '');
                        expect(result.targetId, '');
                  expect(result.topicId, '');
                  expect(result.userId, '');
                  expect(result.userName, '');
          });
  });
}
