import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Metric', () {
    test('model', () {
      final model = Metric(
        date: '',
        value: 0,
      );

      final map = model.toMap();
      final result = Metric.fromMap(map);

            expect(result.date, '');
                  expect(result.value, 0);
          });
  });
}
