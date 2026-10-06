import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductGridColumn', () {
    test('model', () {
      final model = ProductGridColumn();

      final map = model.toMap();
      final result = ProductGridColumn.fromMap(map);
    });
  });
}
