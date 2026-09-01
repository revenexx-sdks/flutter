import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderPlaced', () {
    test('model', () {
      final model = OrderPlaced(
      );

      final map = model.toMap();
      final result = OrderPlaced.fromMap(map);

    });
  });
}
