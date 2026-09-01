import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormKitStepMarker', () {
    test('model', () {
      final model = FormKitStepMarker(
        data: {},
      );

      final map = model.toMap();
      final result = FormKitStepMarker.fromMap(map);
    });
  });
}
