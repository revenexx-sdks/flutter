import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChannelContext', () {
    test('model', () {
      final model = ChannelContext(
      );

      final map = model.toMap();
      final result = ChannelContext.fromMap(map);

    });
  });
}
