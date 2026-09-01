import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ContactInviteResponse', () {
    test('model', () {
      final model = ContactInviteResponse(
      );

      final map = model.toMap();
      final result = ContactInviteResponse.fromMap(map);

    });
  });
}
