import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UnauthenticatedResponse', () {
    test('model', () {
      final model = UnauthenticatedResponse();

      final map = model.toMap();
      final result = UnauthenticatedResponse.fromMap(map);
    });
  });
}
