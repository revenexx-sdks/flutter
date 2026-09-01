import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrganizationActivityRequest', () {
    test('model', () {
      final model = OrganizationActivityRequest(
        contact_id: '',
        subject: '',
      );

      final map = model.toMap();
      final result = OrganizationActivityRequest.fromMap(map);

      expect(result.contact_id, '');
      expect(result.subject, '');
    });
  });
}
