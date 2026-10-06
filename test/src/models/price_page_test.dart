import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PricePage', () {
    test('model', () {
      final model = PricePage();

      final map = model.toMap();
      final result = PricePage.fromMap(map);
    });
  });
}
