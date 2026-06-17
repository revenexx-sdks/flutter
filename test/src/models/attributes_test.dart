import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Attributes', () {
    test('model', () {
      final model = Attributes(
      );

      final map = model.toMap();
      final result = Attributes.fromMap(map);

    });
  });
}
