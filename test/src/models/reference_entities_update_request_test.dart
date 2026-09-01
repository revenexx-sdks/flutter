import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ReferenceEntitiesUpdateRequest', () {
    test('model', () {
      final model = ReferenceEntitiesUpdateRequest();

      final map = model.toMap();
      final result = ReferenceEntitiesUpdateRequest.fromMap(map);
    });
  });
}
