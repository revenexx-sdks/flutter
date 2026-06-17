import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductAssociationsUpdateRequest', () {
    test('model', () {
      final model = ProductAssociationsUpdateRequest(
      );

      final map = model.toMap();
      final result = ProductAssociationsUpdateRequest.fromMap(map);

    });
  });
}
