import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HealthCertificate', () {
    test('model', () {
      final model = HealthCertificate(
        issuerOrganisation: '',
        name: '',
        signatureTypeSN: '',
        subjectSN: '',
        validFrom: '',
        validTo: '',
      );

      final map = model.toMap();
      final result = HealthCertificate.fromMap(map);

      expect(result.issuerOrganisation, '');
      expect(result.name, '');
      expect(result.signatureTypeSN, '');
      expect(result.subjectSN, '');
      expect(result.validFrom, '');
      expect(result.validTo, '');
    });
  });
}
