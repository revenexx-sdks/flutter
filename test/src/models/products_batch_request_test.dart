import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductsBatchRequest', () {
    test('model', () {
      final model = ProductsBatchRequest();

      final map = model.toMap();
      final result = ProductsBatchRequest.fromMap(map);
    });
  });
}
