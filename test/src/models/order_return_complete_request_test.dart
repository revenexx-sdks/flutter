import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderReturnCompleteRequest', () {
    test('model', () {
      final model = OrderReturnCompleteRequest();

      final map = model.toMap();
      final result = OrderReturnCompleteRequest.fromMap(map);
    });
  });
}
