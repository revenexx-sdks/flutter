import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeFieldStorage', () {
    test('model', () {
      final model = AttributeFieldStorage(
      );

      final map = model.toMap();
      final result = AttributeFieldStorage.fromMap(map);

    });
  });
}
