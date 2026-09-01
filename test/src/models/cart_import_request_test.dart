import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartImportRequest', () {
    test('model', () {
      final model = CartImportRequest();

      final map = model.toMap();
      final result = CartImportRequest.fromMap(map);
    });
  });
}
