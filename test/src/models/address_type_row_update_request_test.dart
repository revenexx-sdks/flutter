import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AddressTypeRowUpdateRequest', () {
    test('model', () {
      final model = AddressTypeRowUpdateRequest(
      );

      final map = model.toMap();
      final result = AddressTypeRowUpdateRequest.fromMap(map);

    });
  });
}
