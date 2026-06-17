import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Topic', () {
    test('model', () {
      final model = Topic(
        $createdAt: '',
        $id: '',
        $updatedAt: '',
        emailTotal: ,
        name: '',
        pushTotal: ,
        smsTotal: ,
        subscribe: [],
      );

      final map = model.toMap();
      final result = Topic.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$id, '');
                  expect(result.$updatedAt, '');
                  expect(result.emailTotal, );
                  expect(result.name, '');
                  expect(result.pushTotal, );
                  expect(result.smsTotal, );
                  expect(result.subscribe, []);
          });
  });
}
