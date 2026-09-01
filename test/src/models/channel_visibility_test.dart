import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChannelVisibility', () {
    test('model', () {
      final model = ChannelVisibility(
      );

      final map = model.toMap();
      final result = ChannelVisibility.fromMap(map);

    });
  });
}
