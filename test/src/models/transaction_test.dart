import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Transaction', () {
    test('model', () {
      final model = Transaction(
        $createdAt: '',
        $id: '',
        $updatedAt: '',
        expiresAt: '',
        operations: 0,
        status: '',
      );

      final map = model.toMap();
      final result = Transaction.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$id, '');
      expect(result.$updatedAt, '');
      expect(result.expiresAt, '');
      expect(result.operations, 0);
      expect(result.status, '');
    });
  });
}
