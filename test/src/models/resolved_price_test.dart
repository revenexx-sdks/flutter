import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ResolvedPrice', () {
    test('model', () {
      final model = ResolvedPrice();

      final map = model.toMap();
      final result = ResolvedPrice.fromMap(map);
    });
  });
}
