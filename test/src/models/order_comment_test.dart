import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderComment', () {
    test('model', () {
      final model = OrderComment();

      final map = model.toMap();
      final result = OrderComment.fromMap(map);
    });
  });
}
