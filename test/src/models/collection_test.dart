import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Collection', () {
    test('model', () {
      final model = Collection(
        data: {},
      );

      final map = model.toMap();
      final result = Collection.fromMap(map);

    });
  });
}
