import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Location', () {
    test('model', () {
      final model = Location(
      );

      final map = model.toMap();
      final result = Location.fromMap(map);

    });
  });
}
