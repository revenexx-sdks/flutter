import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductAssociationsFilter', () {
    test('model', () {
      final model = ProductAssociationsFilter(
        data: {},
      );

      final map = model.toMap();
      final result = ProductAssociationsFilter.fromMap(map);
    });
  });
}
