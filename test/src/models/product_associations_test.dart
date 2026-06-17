import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductAssociations', () {
    test('model', () {
      final model = ProductAssociations(
      );

      final map = model.toMap();
      final result = ProductAssociations.fromMap(map);

    });
  });
}
