import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ItemAvailability', () {
    test('model', () {
      final model = ItemAvailability(
      );

      final map = model.toMap();
      final result = ItemAvailability.fromMap(map);

    });
  });
}
