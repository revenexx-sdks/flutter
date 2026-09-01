import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderReturnCompleted', () {
    test('model', () {
      final model = OrderReturnCompleted(
      );

      final map = model.toMap();
      final result = OrderReturnCompleted.fromMap(map);

    });
  });
}
