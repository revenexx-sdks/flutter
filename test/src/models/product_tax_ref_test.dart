import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductTaxRef', () {
    test('model', () {
      final model = ProductTaxRef(
      );

      final map = model.toMap();
      final result = ProductTaxRef.fromMap(map);

    });
  });
}
