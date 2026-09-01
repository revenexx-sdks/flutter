import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PageUserSettingsRequest', () {
    test('model', () {
      final model = PageUserSettingsRequest(
      );

      final map = model.toMap();
      final result = PageUserSettingsRequest.fromMap(map);

    });
  });
}
