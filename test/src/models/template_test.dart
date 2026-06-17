import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Template', () {
    test('model', () {
      final model = Template(
      );

      final map = model.toMap();
      final result = Template.fromMap(map);

    });
  });
}
