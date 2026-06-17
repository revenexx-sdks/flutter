import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Greeting', () {
    test('model', () {
      final model = Greeting(
      );

      final map = model.toMap();
      final result = Greeting.fromMap(map);

    });
  });
}
