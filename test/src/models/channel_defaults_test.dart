import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChannelDefaults', () {
    test('model', () {
      final model = ChannelDefaults();

      final map = model.toMap();
      final result = ChannelDefaults.fromMap(map);
    });
  });
}
