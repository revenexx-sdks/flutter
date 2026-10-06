import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChannelTypeCreateRequest', () {
    test('model', () {
      final model = ChannelTypeCreateRequest(
        code: '',
        title: '',
      );

      final map = model.toMap();
      final result = ChannelTypeCreateRequest.fromMap(map);

      expect(result.code, '');
      expect(result.title, '');
    });
  });
}
