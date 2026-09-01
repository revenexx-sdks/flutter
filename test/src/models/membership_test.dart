import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Membership', () {
    test('model', () {
      final model = Membership(
        $createdAt: '',
        $id: '',
        $updatedAt: '',
        confirm: true,
        invited: '',
        joined: '',
        mfa: true,
        roles: [],
        teamId: '',
        teamName: '',
        userEmail: '',
        userId: '',
        userName: '',
      );

      final map = model.toMap();
      final result = Membership.fromMap(map);

      expect(result.$createdAt, '');
      expect(result.$id, '');
      expect(result.$updatedAt, '');
      expect(result.confirm, true);
      expect(result.invited, '');
      expect(result.joined, '');
      expect(result.mfa, true);
      expect(result.roles, []);
      expect(result.teamId, '');
      expect(result.teamName, '');
      expect(result.userEmail, '');
      expect(result.userId, '');
      expect(result.userName, '');
    });
  });
}
