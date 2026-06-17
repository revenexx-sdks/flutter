import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LocationUpdateRequest', () {
    test('model', () {
      final model = LocationUpdateRequest(
      );

      final map = model.toMap();
      final result = LocationUpdateRequest.fromMap(map);

    });
  });
}
