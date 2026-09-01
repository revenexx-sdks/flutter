import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductsUpdateRequest', () {
    test('model', () {
      final model = ProductsUpdateRequest(
      );

      final map = model.toMap();
      final result = ProductsUpdateRequest.fromMap(map);

    });
  });
}
