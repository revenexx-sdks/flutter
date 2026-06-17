import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Session', () {
    test('model', () {
      final model = Session(
        $createdAt: '',
        $id: '',
        $updatedAt: '',
        clientCode: '',
        clientEngine: '',
        clientEngineVersion: '',
        clientName: '',
        clientType: '',
        clientVersion: '',
        countryCode: '',
        countryName: '',
        current: true,
        deviceBrand: '',
        deviceModel: '',
        deviceName: '',
        expire: '',
        factors: [],
        ip: '',
        mfaUpdatedAt: '',
        osCode: '',
        osName: '',
        osVersion: '',
        provider: '',
        providerAccessToken: '',
        providerAccessTokenExpiry: '',
        providerRefreshToken: '',
        providerUid: '',
        secret: '',
        userId: '',
      );

      final map = model.toMap();
      final result = Session.fromMap(map);

            expect(result.$createdAt, '');
                  expect(result.$id, '');
                  expect(result.$updatedAt, '');
                  expect(result.clientCode, '');
                  expect(result.clientEngine, '');
                  expect(result.clientEngineVersion, '');
                  expect(result.clientName, '');
                  expect(result.clientType, '');
                  expect(result.clientVersion, '');
                  expect(result.countryCode, '');
                  expect(result.countryName, '');
                  expect(result.current, true);
                  expect(result.deviceBrand, '');
                  expect(result.deviceModel, '');
                  expect(result.deviceName, '');
                  expect(result.expire, '');
                  expect(result.factors, []);
                  expect(result.ip, '');
                  expect(result.mfaUpdatedAt, '');
                  expect(result.osCode, '');
                  expect(result.osName, '');
                  expect(result.osVersion, '');
                  expect(result.provider, '');
                  expect(result.providerAccessToken, '');
                  expect(result.providerAccessTokenExpiry, '');
                  expect(result.providerRefreshToken, '');
                  expect(result.providerUid, '');
                  expect(result.secret, '');
                  expect(result.userId, '');
          });
  });
}
