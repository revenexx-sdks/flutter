import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChannelVisibilityItem', () {
    test('model', () {
      final model = ChannelVisibilityItem(
        id: '',
      );

      final map = model.toMap();
      final result = ChannelVisibilityItem.fromMap(map);

            expect(result.id, '');
          });
  });
}
