import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Page', () {
    test('model', () {
      final model = Page(
      );

      final map = model.toMap();
      final result = Page.fromMap(map);

    });
  });
}
