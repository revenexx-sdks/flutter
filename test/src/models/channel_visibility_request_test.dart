import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChannelVisibilityRequest', () {
    test('model', () {
      final model = ChannelVisibilityRequest(
        items: [],
      );

      final map = model.toMap();
      final result = ChannelVisibilityRequest.fromMap(map);

            expect(result.items, []);
          });
  });
}
