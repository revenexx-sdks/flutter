import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Form', () {
    test('model', () {
      final model = Form();

      final map = model.toMap();
      final result = Form.fromMap(map);
    });
  });
}
