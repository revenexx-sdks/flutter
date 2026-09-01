import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LifecycleStageUpdateRequest', () {
    test('model', () {
      final model = LifecycleStageUpdateRequest();

      final map = model.toMap();
      final result = LifecycleStageUpdateRequest.fromMap(map);
    });
  });
}
