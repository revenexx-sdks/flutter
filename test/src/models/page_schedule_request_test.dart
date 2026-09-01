import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PageScheduleRequest', () {
    test('model', () {
      final model = PageScheduleRequest(
        scheduledAt: '',
      );

      final map = model.toMap();
      final result = PageScheduleRequest.fromMap(map);

            expect(result.scheduledAt, '');
          });
  });
}
