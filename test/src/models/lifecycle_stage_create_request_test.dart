import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LifecycleStageCreateRequest', () {
    test('model', () {
      final model = LifecycleStageCreateRequest(
        code: '',
        title: '',
      );

      final map = model.toMap();
      final result = LifecycleStageCreateRequest.fromMap(map);

      expect(result.code, '');
      expect(result.title, '');
    });
  });
}
