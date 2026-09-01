import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PageMenuItem', () {
    test('model', () {
      final model = PageMenuItem(
        data: {},
      );

      final map = model.toMap();
      final result = PageMenuItem.fromMap(map);

    });
  });
}
