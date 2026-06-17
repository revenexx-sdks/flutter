import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AddressUpdateRequest', () {
    test('model', () {
      final model = AddressUpdateRequest(
      );

      final map = model.toMap();
      final result = AddressUpdateRequest.fromMap(map);

    });
  });
}
