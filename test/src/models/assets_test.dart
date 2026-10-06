import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Assets', () {
    test('model', () {
      final model = Assets();

      final map = model.toMap();
      final result = Assets.fromMap(map);
    });
  });
}
