import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ContactUpdateRequest', () {
    test('model', () {
      final model = ContactUpdateRequest(
      );

      final map = model.toMap();
      final result = ContactUpdateRequest.fromMap(map);

    });
  });
}
