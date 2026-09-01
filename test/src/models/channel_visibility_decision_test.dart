import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChannelVisibilityDecision', () {
    test('model', () {
      final model = ChannelVisibilityDecision(
      );

      final map = model.toMap();
      final result = ChannelVisibilityDecision.fromMap(map);

    });
  });
}
