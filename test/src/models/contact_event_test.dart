import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ContactEvent', () {
    test('model', () {
      final model = ContactEvent(
      );

      final map = model.toMap();
      final result = ContactEvent.fromMap(map);

    });
  });
}
