import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FamiliesUpdateRequest', () {
    test('model', () {
      final model = FamiliesUpdateRequest(
      );

      final map = model.toMap();
      final result = FamiliesUpdateRequest.fromMap(map);

    });
  });
}
