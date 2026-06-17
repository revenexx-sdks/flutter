import 'package:revenexx/models.dart';
import 'package:revenexx/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChannelCreateRequest', () {
    test('model', () {
      final model = ChannelCreateRequest(
        code: '',
        name: '',
      );

      final map = model.toMap();
      final result = ChannelCreateRequest.fromMap(map);

            expect(result.code, '');
                  expect(result.name, '');
          });
  });
}
