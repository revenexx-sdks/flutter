import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Menu', () {
    test('model', () {
      final model = Menu(
      );

      final map = model.toMap();
      final result = Menu.fromMap(map);

    });
  });
}
