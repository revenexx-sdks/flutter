import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributeOptionsUpdateRequest', () {
    test('model', () {
      final model = AttributeOptionsUpdateRequest();

      final map = model.toMap();
      final result = AttributeOptionsUpdateRequest.fromMap(map);
    });
  });
}
