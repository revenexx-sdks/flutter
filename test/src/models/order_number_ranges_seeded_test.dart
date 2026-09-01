import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrderNumberRangesSeeded', () {
    test('model', () {
      final model = OrderNumberRangesSeeded();

      final map = model.toMap();
      final result = OrderNumberRangesSeeded.fromMap(map);
    });
  });
}
