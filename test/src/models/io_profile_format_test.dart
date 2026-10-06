import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('IoProfileFormat', () {
    test('model', () {
      final model = IoProfileFormat();

      final map = model.toMap();
      final result = IoProfileFormat.fromMap(map);
    });
  });
}
