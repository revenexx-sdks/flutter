import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketLocalePolicy', () {
    test('model', () {
      final model = MarketLocalePolicy(
      );

      final map = model.toMap();
      final result = MarketLocalePolicy.fromMap(map);

    });
  });
}
