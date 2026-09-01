import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AddressTypeRow', () {
    test('model', () {
      final model = AddressTypeRow();

      final map = model.toMap();
      final result = AddressTypeRow.fromMap(map);
    });
  });
}
