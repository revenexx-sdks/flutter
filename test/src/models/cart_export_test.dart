import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartExport', () {
    test('model', () {
      final model = CartExport();

      final map = model.toMap();
      final result = CartExport.fromMap(map);
    });
  });
}
