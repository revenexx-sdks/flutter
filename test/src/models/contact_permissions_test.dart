import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ContactPermissions', () {
    test('model', () {
      final model = ContactPermissions(
      );

      final map = model.toMap();
      final result = ContactPermissions.fromMap(map);

    });
  });
}
