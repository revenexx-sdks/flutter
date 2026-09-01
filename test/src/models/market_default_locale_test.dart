import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketDefaultLocale', () {
    test('model', () {
      final model = MarketDefaultLocale();

      final map = model.toMap();
      final result = MarketDefaultLocale.fromMap(map);
    });
  });
}
