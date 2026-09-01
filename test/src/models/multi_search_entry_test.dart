import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MultiSearchEntry', () {
    test('model', () {
      final model = MultiSearchEntry(
        data: {},
      );

      final map = model.toMap();
      final result = MultiSearchEntry.fromMap(map);

    });
  });
}
