import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormsPage', () {
    test('model', () {
      final model = FormsPage(
      );

      final map = model.toMap();
      final result = FormsPage.fromMap(map);

    });
  });
}
