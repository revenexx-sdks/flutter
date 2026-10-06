import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AttributesUpdateRequest', () {
    test('model', () {
      final model = AttributesUpdateRequest();

      final map = model.toMap();
      final result = AttributesUpdateRequest.fromMap(map);
    });
  });
}
