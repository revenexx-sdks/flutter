import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChannelTypeRow', () {
    test('model', () {
      final model = ChannelTypeRow(
      );

      final map = model.toMap();
      final result = ChannelTypeRow.fromMap(map);

    });
  });
}
