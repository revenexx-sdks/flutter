import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrganizationCreateRequest', () {
    test('model', () {
      final model = OrganizationCreateRequest(
        name: '',
      );

      final map = model.toMap();
      final result = OrganizationCreateRequest.fromMap(map);

      expect(result.name, '');
    });
  });
}
