import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Categories', () {
    test('model', () {
      final model = Categories(
      );

      final map = model.toMap();
      final result = Categories.fromMap(map);

    });
  });
}
