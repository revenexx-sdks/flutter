import 'package:revenexx/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChannelTypeDefaults', () {
    test('model', () {
      final model = ChannelTypeDefaults();

      final map = model.toMap();
      final result = ChannelTypeDefaults.fromMap(map);
    });
  });
}
