import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChannelVisibilityCounts', () {
    test('model', () {
      final model = ChannelVisibilityCounts(
      );

      final map = model.toMap();
      final result = ChannelVisibilityCounts.fromMap(map);

    });
  });
}
