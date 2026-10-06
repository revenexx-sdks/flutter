import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AddressCreateRequest', () {
    test('model', () {
      final model = AddressCreateRequest(
        city: '',
        country: '',
        street: '',
        zip: '',
      );

      final map = model.toMap();
      final result = AddressCreateRequest.fromMap(map);

      expect(result.city, '');
      expect(result.country, '');
      expect(result.street, '');
      expect(result.zip, '');
    });
  });
}
