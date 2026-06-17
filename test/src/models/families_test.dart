import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Families', () {
    test('model', () {
      final model = Families(
      );

      final map = model.toMap();
      final result = Families.fromMap(map);

    });
  });
}
