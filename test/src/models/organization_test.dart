import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Organization', () {
    test('model', () {
      final model = Organization(
      );

      final map = model.toMap();
      final result = Organization.fromMap(map);

    });
  });
}
