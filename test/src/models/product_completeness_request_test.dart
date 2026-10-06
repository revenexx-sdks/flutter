import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductCompletenessRequest', () {
    test('model', () {
      final model = ProductCompletenessRequest();

      final map = model.toMap();
      final result = ProductCompletenessRequest.fromMap(map);
    });
  });
}
