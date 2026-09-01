import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderDetail', () {
    test('model', () {
      final model = OrderDetail(
      );

      final map = model.toMap();
      final result = OrderDetail.fromMap(map);

    });
  });
}
