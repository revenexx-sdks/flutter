import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChannelTypeUpdateRequest', () {
    test('model', () {
      final model = ChannelTypeUpdateRequest(
      );

      final map = model.toMap();
      final result = ChannelTypeUpdateRequest.fromMap(map);

    });
  });
}
