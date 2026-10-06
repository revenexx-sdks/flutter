import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductGridRow', () {
    test('model', () {
      final model = ProductGridRow();

      final map = model.toMap();
      final result = ProductGridRow.fromMap(map);
    });
  });
}
