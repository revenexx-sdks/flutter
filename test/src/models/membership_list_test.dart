import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MembershipList', () {
    test('model', () {
      final model = MembershipList(
        memberships: [],
        total: 0,
      );

      final map = model.toMap();
      final result = MembershipList.fromMap(map);

      expect(result.memberships, []);
      expect(result.total, 0);
    });
  });
}
