import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ReorderAlert', () {
    test('model', () {
      final model = ReorderAlert();

      final map = model.toMap();
      final result = ReorderAlert.fromMap(map);
    });
  });
}
