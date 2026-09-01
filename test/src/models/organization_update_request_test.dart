import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrganizationUpdateRequest', () {
    test('model', () {
      final model = OrganizationUpdateRequest();

      final map = model.toMap();
      final result = OrganizationUpdateRequest.fromMap(map);
    });
  });
}
