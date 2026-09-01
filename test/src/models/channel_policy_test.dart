import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChannelPolicy', () {
    test('model', () {
      final model = ChannelPolicy(
      );

      final map = model.toMap();
      final result = ChannelPolicy.fromMap(map);

    });
  });
}
