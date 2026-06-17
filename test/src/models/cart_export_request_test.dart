import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartExportRequest', () {
    test('model', () {
      final model = CartExportRequest(
      );

      final map = model.toMap();
      final result = CartExportRequest.fromMap(map);

    });
  });
}
