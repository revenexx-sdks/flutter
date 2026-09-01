import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Log', () {
    test('model', () {
      final model = Log(
        clientCode: '',
        clientEngine: '',
        clientEngineVersion: '',
        clientName: '',
        clientType: '',
        clientVersion: '',
        countryCode: '',
        countryName: '',
        deviceBrand: '',
        deviceModel: '',
        deviceName: '',
        event: '',
        ip: '',
        mode: '',
        osCode: '',
        osName: '',
        osVersion: '',
        time: '',
        userEmail: '',
        userId: '',
        userName: '',
      );

      final map = model.toMap();
      final result = Log.fromMap(map);

      expect(result.clientCode, '');
      expect(result.clientEngine, '');
      expect(result.clientEngineVersion, '');
      expect(result.clientName, '');
      expect(result.clientType, '');
      expect(result.clientVersion, '');
      expect(result.countryCode, '');
      expect(result.countryName, '');
      expect(result.deviceBrand, '');
      expect(result.deviceModel, '');
      expect(result.deviceName, '');
      expect(result.event, '');
      expect(result.ip, '');
      expect(result.mode, '');
      expect(result.osCode, '');
      expect(result.osName, '');
      expect(result.osVersion, '');
      expect(result.time, '');
      expect(result.userEmail, '');
      expect(result.userId, '');
      expect(result.userName, '');
    });
  });
}
