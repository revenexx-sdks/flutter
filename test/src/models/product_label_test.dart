import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProductLabel', () {
    test('model', () {
      final model = ProductLabel(
      );

      final map = model.toMap();
      final result = ProductLabel.fromMap(map);

    });
  });
}
