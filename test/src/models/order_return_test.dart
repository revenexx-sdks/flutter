import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderReturn', () {
    test('model', () {
      final model = OrderReturn();

      final map = model.toMap();
      final result = OrderReturn.fromMap(map);
    });
  });
}
