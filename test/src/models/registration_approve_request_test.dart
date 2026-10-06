import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RegistrationApproveRequest', () {
    test('model', () {
      final model = RegistrationApproveRequest();

      final map = model.toMap();
      final result = RegistrationApproveRequest.fromMap(map);
    });
  });
}
