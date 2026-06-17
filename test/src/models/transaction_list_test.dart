import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TransactionList', () {
    test('model', () {
      final model = TransactionList(
        total: ,
        transactions: [],
      );

      final map = model.toMap();
      final result = TransactionList.fromMap(map);

            expect(result.total, );
                  expect(result.transactions, []);
          });
  });
}
