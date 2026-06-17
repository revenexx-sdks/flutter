import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LibraryItem', () {
    test('model', () {
      final model = LibraryItem(
      );

      final map = model.toMap();
      final result = LibraryItem.fromMap(map);

    });
  });
}
