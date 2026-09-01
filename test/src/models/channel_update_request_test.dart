import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChannelUpdateRequest', () {
    test('model', () {
      final model = ChannelUpdateRequest();

      final map = model.toMap();
      final result = ChannelUpdateRequest.fromMap(map);
    });
  });
}
