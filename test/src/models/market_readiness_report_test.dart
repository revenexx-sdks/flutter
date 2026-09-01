import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MarketReadinessReport', () {
    test('model', () {
      final model = MarketReadinessReport(
      );

      final map = model.toMap();
      final result = MarketReadinessReport.fromMap(map);

    });
  });
}
