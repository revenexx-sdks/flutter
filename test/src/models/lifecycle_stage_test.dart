import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LifecycleStage', () {
    test('model', () {
      final model = LifecycleStage(
      );

      final map = model.toMap();
      final result = LifecycleStage.fromMap(map);

    });
  });
}
