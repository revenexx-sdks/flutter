import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketReadinessCheck', () {
    test('model', () {
      final model = MarketReadinessCheck(
      );

      final map = model.toMap();
      final result = MarketReadinessCheck.fromMap(map);

    });
  });
}
