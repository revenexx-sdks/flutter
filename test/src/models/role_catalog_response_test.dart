import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RoleCatalogResponse', () {
    test('model', () {
      final model = RoleCatalogResponse(
      );

      final map = model.toMap();
      final result = RoleCatalogResponse.fromMap(map);

    });
  });
}
